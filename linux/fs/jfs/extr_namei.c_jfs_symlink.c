
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_5__ {int ixpxd; } ;
struct tblock {TYPE_1__ u; int ino; int xflag; } ;
struct super_block {int dummy; } ;
struct metapage {int data; } ;
struct inode {int i_mode; int i_size; int i_mtime; int i_ctime; int i_ino; struct super_block* i_sb; TYPE_2__* i_mapping; int * i_op; int i_link; } ;
struct dentry {int d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef int s64 ;
typedef int ino_t ;
struct TYPE_8__ {int commit_mutex; int mode2; int i_inline; int ixpxd; } ;
struct TYPE_7__ {int bsize; int l2bsize; scalar_t__ nbperpage; } ;
struct TYPE_6__ {int * a_ops; } ;


 int COMMIT_CREATE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int COMMIT_PWMAP ;
 int EIO ;
 int IDATASIZE ;
 int INLINEEA ;
 scalar_t__ IS_ERR (struct inode*) ;
 int JFS_CREATE ;
 TYPE_4__* JFS_IP (struct inode*) ;
 TYPE_3__* JFS_SBI (struct super_block*) ;
 int PSIZE ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int dtInsert (int ,struct inode*,struct component_name*,int *,struct btstack*) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int ) ;
 int flush_metapage (struct metapage*) ;
 int free_UCSname (struct component_name*) ;
 int free_ea_wmap (struct inode*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 struct metapage* get_metapage (struct inode*,int,int ,int) ;
 struct inode* ialloc (struct inode*,int) ;
 int inode_nohighmem (struct inode*) ;
 int jfs_aops ;
 int jfs_fast_symlink_inode_operations ;
 int jfs_info (char*,...) ;
 int jfs_init_security (int ,struct inode*,struct inode*,int *) ;
 int jfs_symlink_inode_operations ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (int ,char const*,int) ;
 int min (int,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int ) ;
 int txBegin (struct super_block*,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 int xtInitRoot (int ,struct inode*) ;
 int xtInsert (int ,struct inode*,int ,int ,int,int*,int ) ;
 int xtTruncate (int ,struct inode*,int ,int ) ;

__attribute__((used)) static int jfs_symlink(struct inode *dip, struct dentry *dentry,
  const char *name)
{
 int rc;
 tid_t tid;
 ino_t ino = 0;
 struct component_name dname;
 int ssize;
 struct btstack btstack;
 struct inode *ip = d_inode(dentry);
 s64 xlen = 0;
 int bmask = 0, xsize;
 s64 xaddr;
 struct metapage *mp;
 struct super_block *sb;
 struct tblock *tblk;

 struct inode *iplist[2];

 jfs_info("jfs_symlink: dip:0x%p name:%s", dip, name);

 rc = dquot_initialize(dip);
 if (rc)
  goto out1;

 ssize = strlen(name) + 1;






 if ((rc = get_UCSname(&dname, dentry)))
  goto out1;





 ip = ialloc(dip, S_IFLNK | 0777);
 if (IS_ERR(ip)) {
  rc = PTR_ERR(ip);
  goto out2;
 }

 tid = txBegin(dip->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

 rc = jfs_init_security(tid, ip, dip, &dentry->d_name);
 if (rc)
  goto out3;

 tblk = tid_to_tblock(tid);
 tblk->xflag |= COMMIT_CREATE;
 tblk->ino = ip->i_ino;
 tblk->u.ixpxd = JFS_IP(ip)->ixpxd;





 ip->i_mode |= 0777;




 xtInitRoot(tid, ip);





 if (ssize <= IDATASIZE) {
  ip->i_op = &jfs_fast_symlink_inode_operations;

  ip->i_link = JFS_IP(ip)->i_inline;
  memcpy(ip->i_link, name, ssize);
  ip->i_size = ssize - 1;





  if (ssize > sizeof (JFS_IP(ip)->i_inline))
   JFS_IP(ip)->mode2 &= ~INLINEEA;

  jfs_info("jfs_symlink: fast symlink added  ssize:%d name:%s ",
    ssize, name);
 }



 else {
  jfs_info("jfs_symlink: allocate extent ip:0x%p", ip);

  ip->i_op = &jfs_symlink_inode_operations;
  inode_nohighmem(ip);
  ip->i_mapping->a_ops = &jfs_aops;






  sb = ip->i_sb;
  bmask = JFS_SBI(sb)->bsize - 1;
  xsize = (ssize + bmask) & ~bmask;
  xaddr = 0;
  xlen = xsize >> JFS_SBI(sb)->l2bsize;
  if ((rc = xtInsert(tid, ip, 0, 0, xlen, &xaddr, 0))) {
   txAbort(tid, 0);
   goto out3;
  }
  ip->i_size = ssize - 1;
  while (ssize) {

   int copy_size = min(ssize, PSIZE);

   mp = get_metapage(ip, xaddr, PSIZE, 1);

   if (mp == ((void*)0)) {
    xtTruncate(tid, ip, 0, COMMIT_PWMAP);
    rc = -EIO;
    txAbort(tid, 0);
    goto out3;
   }
   memcpy(mp->data, name, copy_size);
   flush_metapage(mp);
   ssize -= copy_size;
   name += copy_size;
   xaddr += JFS_SBI(sb)->nbperpage;
  }
 }




 rc = dtSearch(dip, &dname, &ino, &btstack, JFS_CREATE);
 if (rc == 0) {
  ino = ip->i_ino;
  rc = dtInsert(tid, dip, &dname, &ino, &btstack);
 }
 if (rc) {
  if (xlen)
   xtTruncate(tid, ip, 0, COMMIT_PWMAP);
  txAbort(tid, 0);

  goto out3;
 }

 mark_inode_dirty(ip);

 dip->i_ctime = dip->i_mtime = current_time(dip);
 mark_inode_dirty(dip);




 iplist[0] = dip;
 iplist[1] = ip;
 rc = txCommit(tid, 2, &iplist[0], 0);

      out3:
 txEnd(tid);
 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dip)->commit_mutex);
 if (rc) {
  free_ea_wmap(ip);
  clear_nlink(ip);
  discard_new_inode(ip);
 } else {
  d_instantiate_new(dentry, ip);
 }

      out2:
 free_UCSname(&dname);

      out1:
 jfs_info("jfs_symlink: rc:%d", rc);
 return rc;
}
