
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct fuse_notify_retrieve_out {int nodeid; } ;
struct fuse_copy_state {int dummy; } ;
struct fuse_conn {int killsb; scalar_t__ sb; } ;
typedef int outarg ;


 int EINVAL ;
 int ENOENT ;
 int down_read (int *) ;
 int fuse_copy_finish (struct fuse_copy_state*) ;
 int fuse_copy_one (struct fuse_copy_state*,struct fuse_notify_retrieve_out*,int) ;
 int fuse_inode_eq ;
 int fuse_retrieve (struct fuse_conn*,struct inode*,struct fuse_notify_retrieve_out*) ;
 struct inode* ilookup5 (scalar_t__,int ,int ,int *) ;
 int iput (struct inode*) ;
 int up_read (int *) ;

__attribute__((used)) static int fuse_notify_retrieve(struct fuse_conn *fc, unsigned int size,
    struct fuse_copy_state *cs)
{
 struct fuse_notify_retrieve_out outarg;
 struct inode *inode;
 int err;

 err = -EINVAL;
 if (size != sizeof(outarg))
  goto copy_finish;

 err = fuse_copy_one(cs, &outarg, sizeof(outarg));
 if (err)
  goto copy_finish;

 fuse_copy_finish(cs);

 down_read(&fc->killsb);
 err = -ENOENT;
 if (fc->sb) {
  u64 nodeid = outarg.nodeid;

  inode = ilookup5(fc->sb, nodeid, fuse_inode_eq, &nodeid);
  if (inode) {
   err = fuse_retrieve(fc, inode, &outarg);
   iput(inode);
  }
 }
 up_read(&fc->killsb);

 return err;

copy_finish:
 fuse_copy_finish(cs);
 return err;
}
