
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
typedef int u8 ;
struct ubifs_inode {int data_len; int ui_lock; int ui_size; int synced_i_size; int ui_mutex; } ;
struct ubifs_ino_node {int dummy; } ;
struct ubifs_info {TYPE_2__* jheads; } ;
struct TYPE_3__ {int node_type; } ;
struct ubifs_dent_node {char* name; int nlen; int type; scalar_t__ inum; int key; TYPE_1__ ch; } ;
struct inode {scalar_t__ i_nlink; int i_ino; int i_mode; } ;
struct fscrypt_name {int dummy; } ;
struct TYPE_4__ {int wbuf; } ;


 int ALIGN (int,int) ;
 size_t BASEHD ;
 int ENOMEM ;
 int GFP_NOFS ;
 int IS_DIRSYNC (struct inode const*) ;
 int UBIFS_DENT_NODE_SZ ;
 int UBIFS_HASH_ARR_SZ ;
 int UBIFS_INO_NODE_SZ ;
 int UBIFS_XENT_NODE ;
 int cpu_to_le16 (size_t) ;
 int finish_reservation (struct ubifs_info*) ;
 size_t fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 int get_dent_type (int ) ;
 int highest_ino_key (struct ubifs_info*,union ubifs_key*,int ) ;
 int ino_key_init (struct ubifs_info*,union ubifs_key*,int ) ;
 int key_write (struct ubifs_info*,union ubifs_key*,int ) ;
 int kfree (struct ubifs_dent_node*) ;
 struct ubifs_dent_node* kzalloc (int,int ) ;
 int lowest_ino_key (struct ubifs_info*,union ubifs_key*,int ) ;
 int make_reservation (struct ubifs_info*,size_t,int) ;
 int mark_inode_clean (struct ubifs_info*,struct ubifs_inode*) ;
 int memcpy (char*,int ,size_t) ;
 int mutex_is_locked (int *) ;
 int pack_inode (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ;
 int release_head (struct ubifs_info*,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_add_auth_dirt (struct ubifs_info*,int) ;
 int ubifs_add_dirt (struct ubifs_info*,int,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_auth_node_sz (struct ubifs_info*) ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;
 int ubifs_node_calc_hash (struct ubifs_info*,struct ubifs_ino_node*,int *) ;
 int ubifs_prep_grp_node (struct ubifs_info*,struct ubifs_dent_node*,int,int ) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_tnc_add (struct ubifs_info*,union ubifs_key*,int,int,int,int *) ;
 int ubifs_tnc_remove_nm (struct ubifs_info*,union ubifs_key*,struct fscrypt_name const*) ;
 int ubifs_tnc_remove_range (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ;
 int ubifs_wbuf_add_ino_nolock (int *,int ) ;
 int write_head (struct ubifs_info*,size_t,struct ubifs_dent_node*,int,int*,int*,int) ;
 int xent_key_init (struct ubifs_info*,union ubifs_key*,int ,struct fscrypt_name const*) ;
 int zero_dent_node_unused (struct ubifs_dent_node*) ;

int ubifs_jnl_delete_xattr(struct ubifs_info *c, const struct inode *host,
      const struct inode *inode,
      const struct fscrypt_name *nm)
{
 int err, xlen, hlen, len, lnum, xent_offs, aligned_xlen, write_len;
 struct ubifs_dent_node *xent;
 struct ubifs_ino_node *ino;
 union ubifs_key xent_key, key1, key2;
 int sync = IS_DIRSYNC(host);
 struct ubifs_inode *host_ui = ubifs_inode(host);
 u8 hash[UBIFS_HASH_ARR_SZ];

 ubifs_assert(c, inode->i_nlink == 0);
 ubifs_assert(c, mutex_is_locked(&host_ui->ui_mutex));





 xlen = UBIFS_DENT_NODE_SZ + fname_len(nm) + 1;
 aligned_xlen = ALIGN(xlen, 8);
 hlen = host_ui->data_len + UBIFS_INO_NODE_SZ;
 len = aligned_xlen + UBIFS_INO_NODE_SZ + ALIGN(hlen, 8);

 write_len = len + ubifs_auth_node_sz(c);

 xent = kzalloc(write_len, GFP_NOFS);
 if (!xent)
  return -ENOMEM;


 err = make_reservation(c, BASEHD, write_len);
 if (err) {
  kfree(xent);
  return err;
 }

 xent->ch.node_type = UBIFS_XENT_NODE;
 xent_key_init(c, &xent_key, host->i_ino, nm);
 key_write(c, &xent_key, xent->key);
 xent->inum = 0;
 xent->type = get_dent_type(inode->i_mode);
 xent->nlen = cpu_to_le16(fname_len(nm));
 memcpy(xent->name, fname_name(nm), fname_len(nm));
 xent->name[fname_len(nm)] = '\0';
 zero_dent_node_unused(xent);
 ubifs_prep_grp_node(c, xent, xlen, 0);

 ino = (void *)xent + aligned_xlen;
 pack_inode(c, ino, inode, 0);
 ino = (void *)ino + UBIFS_INO_NODE_SZ;
 pack_inode(c, ino, host, 1);
 err = ubifs_node_calc_hash(c, ino, hash);
 if (err)
  goto out_release;

 err = write_head(c, BASEHD, xent, write_len, &lnum, &xent_offs, sync);
 if (!sync && !err)
  ubifs_wbuf_add_ino_nolock(&c->jheads[BASEHD].wbuf, host->i_ino);
 release_head(c, BASEHD);

 ubifs_add_auth_dirt(c, lnum);
 kfree(xent);
 if (err)
  goto out_ro;


 err = ubifs_tnc_remove_nm(c, &xent_key, nm);
 if (err)
  goto out_ro;
 err = ubifs_add_dirt(c, lnum, xlen);
 if (err)
  goto out_ro;





 lowest_ino_key(c, &key1, inode->i_ino);
 highest_ino_key(c, &key2, inode->i_ino);
 err = ubifs_tnc_remove_range(c, &key1, &key2);
 if (err)
  goto out_ro;
 err = ubifs_add_dirt(c, lnum, UBIFS_INO_NODE_SZ);
 if (err)
  goto out_ro;


 ino_key_init(c, &key1, host->i_ino);
 err = ubifs_tnc_add(c, &key1, lnum, xent_offs + len - hlen, hlen, hash);
 if (err)
  goto out_ro;

 finish_reservation(c);
 spin_lock(&host_ui->ui_lock);
 host_ui->synced_i_size = host_ui->ui_size;
 spin_unlock(&host_ui->ui_lock);
 mark_inode_clean(c, host_ui);
 return 0;

out_release:
 kfree(xent);
 release_head(c, BASEHD);
out_ro:
 ubifs_ro_mode(c, err);
 finish_reservation(c);
 return err;
}
