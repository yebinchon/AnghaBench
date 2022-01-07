
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fuse_conn {int entry; } ;


 int fuse_conn_put (struct fuse_conn*) ;
 int fuse_ctl_remove_conn (struct fuse_conn*) ;
 int fuse_mutex ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fuse_put_super(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 mutex_lock(&fuse_mutex);
 list_del(&fc->entry);
 fuse_ctl_remove_conn(fc);
 mutex_unlock(&fuse_mutex);

 fuse_conn_put(fc);
}
