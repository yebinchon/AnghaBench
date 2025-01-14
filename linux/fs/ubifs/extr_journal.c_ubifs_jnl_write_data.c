
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
typedef int u8 ;
struct ubifs_inode {int flags; int compr_type; } ;
struct ubifs_info {int write_reserve_mutex; TYPE_2__* jheads; struct ubifs_data_node* write_reserve_buf; } ;
struct TYPE_3__ {int node_type; } ;
struct ubifs_data_node {int compr_type; scalar_t__ compr_size; int data; int size; int key; TYPE_1__ ch; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int wbuf; } ;


 int ALIGN (int,int) ;
 int COMPRESSED_DATA_NODE_BUF_SZ ;
 size_t DATAHD ;
 int GFP_NOFS ;
 int UBIFS_BLOCK_SIZE ;
 scalar_t__ UBIFS_CIPHER_BLOCK_SIZE ;
 int UBIFS_COMPR_FL ;
 int UBIFS_COMPR_NONE ;
 int UBIFS_DATA_NODE ;
 int UBIFS_DATA_NODE_SZ ;
 int UBIFS_HASH_ARR_SZ ;
 int __GFP_NOWARN ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int dbg_jnlk (union ubifs_key const*,char*,unsigned long,int ,int) ;
 int finish_reservation (struct ubifs_info*) ;
 int key_block (struct ubifs_info*,union ubifs_key const*) ;
 scalar_t__ key_inum (struct ubifs_info*,union ubifs_key const*) ;
 int key_write (struct ubifs_info*,union ubifs_key const*,int *) ;
 int kfree (struct ubifs_data_node*) ;
 struct ubifs_data_node* kmalloc (int,int) ;
 int make_reservation (struct ubifs_info*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_head (struct ubifs_info*,size_t) ;
 int ubifs_add_auth_dirt (struct ubifs_info*,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_auth_node_sz (struct ubifs_info*) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info*) ;
 int ubifs_compress (struct ubifs_info*,void const*,int,int *,int*,int*) ;
 int ubifs_crypt_is_encrypted (struct inode const*) ;
 int ubifs_encrypt (struct inode const*,struct ubifs_data_node*,int,int*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;
 int ubifs_node_calc_hash (struct ubifs_info*,struct ubifs_data_node*,int *) ;
 int ubifs_prepare_node (struct ubifs_info*,struct ubifs_data_node*,int,int ) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_tnc_add (struct ubifs_info*,union ubifs_key const*,int,int,int,int *) ;
 int ubifs_wbuf_add_ino_nolock (int *,scalar_t__) ;
 int write_head (struct ubifs_info*,size_t,struct ubifs_data_node*,int,int*,int*,int ) ;

int ubifs_jnl_write_data(struct ubifs_info *c, const struct inode *inode,
    const union ubifs_key *key, const void *buf, int len)
{
 struct ubifs_data_node *data;
 int err, lnum, offs, compr_type, out_len, compr_len, auth_len;
 int dlen = COMPRESSED_DATA_NODE_BUF_SZ, allocated = 1;
 int write_len;
 struct ubifs_inode *ui = ubifs_inode(inode);
 bool encrypted = ubifs_crypt_is_encrypted(inode);
 u8 hash[UBIFS_HASH_ARR_SZ];

 dbg_jnlk(key, "ino %lu, blk %u, len %d, key ",
  (unsigned long)key_inum(c, key), key_block(c, key), len);
 ubifs_assert(c, len <= UBIFS_BLOCK_SIZE);

 if (encrypted)
  dlen += UBIFS_CIPHER_BLOCK_SIZE;

 auth_len = ubifs_auth_node_sz(c);

 data = kmalloc(dlen + auth_len, GFP_NOFS | __GFP_NOWARN);
 if (!data) {







  allocated = 0;
  mutex_lock(&c->write_reserve_mutex);
  data = c->write_reserve_buf;
 }

 data->ch.node_type = UBIFS_DATA_NODE;
 key_write(c, key, &data->key);
 data->size = cpu_to_le32(len);

 if (!(ui->flags & UBIFS_COMPR_FL))

  compr_type = UBIFS_COMPR_NONE;
 else
  compr_type = ui->compr_type;

 out_len = compr_len = dlen - UBIFS_DATA_NODE_SZ;
 ubifs_compress(c, buf, len, &data->data, &compr_len, &compr_type);
 ubifs_assert(c, compr_len <= UBIFS_BLOCK_SIZE);

 if (encrypted) {
  err = ubifs_encrypt(inode, data, compr_len, &out_len, key_block(c, key));
  if (err)
   goto out_free;

 } else {
  data->compr_size = 0;
  out_len = compr_len;
 }

 dlen = UBIFS_DATA_NODE_SZ + out_len;
 if (ubifs_authenticated(c))
  write_len = ALIGN(dlen, 8) + auth_len;
 else
  write_len = dlen;

 data->compr_type = cpu_to_le16(compr_type);


 err = make_reservation(c, DATAHD, write_len);
 if (err)
  goto out_free;

 ubifs_prepare_node(c, data, dlen, 0);
 err = write_head(c, DATAHD, data, write_len, &lnum, &offs, 0);
 if (err)
  goto out_release;

 err = ubifs_node_calc_hash(c, data, hash);
 if (err)
  goto out_release;

 ubifs_wbuf_add_ino_nolock(&c->jheads[DATAHD].wbuf, key_inum(c, key));
 release_head(c, DATAHD);

 ubifs_add_auth_dirt(c, lnum);

 err = ubifs_tnc_add(c, key, lnum, offs, dlen, hash);
 if (err)
  goto out_ro;

 finish_reservation(c);
 if (!allocated)
  mutex_unlock(&c->write_reserve_mutex);
 else
  kfree(data);
 return 0;

out_release:
 release_head(c, DATAHD);
out_ro:
 ubifs_ro_mode(c, err);
 finish_reservation(c);
out_free:
 if (!allocated)
  mutex_unlock(&c->write_reserve_mutex);
 else
  kfree(data);
 return err;
}
