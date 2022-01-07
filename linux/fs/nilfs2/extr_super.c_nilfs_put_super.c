
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_dat; int ns_cpfile; int ns_sufile; int ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;


 int destroy_nilfs (struct the_nilfs*) ;
 int down_write (int *) ;
 int iput (int ) ;
 int nilfs_cleanup_super (struct super_block*) ;
 int nilfs_detach_log_writer (struct super_block*) ;
 int sb_rdonly (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static void nilfs_put_super(struct super_block *sb)
{
 struct the_nilfs *nilfs = sb->s_fs_info;

 nilfs_detach_log_writer(sb);

 if (!sb_rdonly(sb)) {
  down_write(&nilfs->ns_sem);
  nilfs_cleanup_super(sb);
  up_write(&nilfs->ns_sem);
 }

 iput(nilfs->ns_sufile);
 iput(nilfs->ns_cpfile);
 iput(nilfs->ns_dat);

 destroy_nilfs(nilfs);
 sb->s_fs_info = ((void*)0);
}
