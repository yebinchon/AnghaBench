
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_copy_state {scalar_t__ move_pages; } ;
struct fuse_conn {int dummy; } ;
typedef enum fuse_notify_code { ____Placeholder_fuse_notify_code } fuse_notify_code ;


 int EINVAL ;






 int fuse_copy_finish (struct fuse_copy_state*) ;
 int fuse_notify_delete (struct fuse_conn*,unsigned int,struct fuse_copy_state*) ;
 int fuse_notify_inval_entry (struct fuse_conn*,unsigned int,struct fuse_copy_state*) ;
 int fuse_notify_inval_inode (struct fuse_conn*,unsigned int,struct fuse_copy_state*) ;
 int fuse_notify_poll (struct fuse_conn*,unsigned int,struct fuse_copy_state*) ;
 int fuse_notify_retrieve (struct fuse_conn*,unsigned int,struct fuse_copy_state*) ;
 int fuse_notify_store (struct fuse_conn*,unsigned int,struct fuse_copy_state*) ;

__attribute__((used)) static int fuse_notify(struct fuse_conn *fc, enum fuse_notify_code code,
         unsigned int size, struct fuse_copy_state *cs)
{

 cs->move_pages = 0;

 switch (code) {
 case 130:
  return fuse_notify_poll(fc, size, cs);

 case 131:
  return fuse_notify_inval_inode(fc, size, cs);

 case 132:
  return fuse_notify_inval_entry(fc, size, cs);

 case 128:
  return fuse_notify_store(fc, size, cs);

 case 129:
  return fuse_notify_retrieve(fc, size, cs);

 case 133:
  return fuse_notify_delete(fc, size, cs);

 default:
  fuse_copy_finish(cs);
  return -EINVAL;
 }
}
