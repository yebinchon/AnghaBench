
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fuse_conn {int no_force_umount; } ;


 int fuse_abort_conn (struct fuse_conn*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;

__attribute__((used)) static void fuse_umount_begin(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 if (!fc->no_force_umount)
  fuse_abort_conn(fc);
}
