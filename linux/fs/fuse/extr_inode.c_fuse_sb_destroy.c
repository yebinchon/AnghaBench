
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fuse_conn {int killsb; int * sb; scalar_t__ destroy; } ;


 int down_write (int *) ;
 int fuse_abort_conn (struct fuse_conn*) ;
 int fuse_send_destroy (struct fuse_conn*) ;
 int fuse_wait_aborted (struct fuse_conn*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static void fuse_sb_destroy(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 if (fc) {
  if (fc->destroy)
   fuse_send_destroy(fc);

  fuse_abort_conn(fc);
  fuse_wait_aborted(fc);

  down_write(&fc->killsb);
  fc->sb = ((void*)0);
  up_write(&fc->killsb);
 }
}
