
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {unsigned int ns_mount_state; int ns_sem; } ;


 unsigned int NILFS_VALID_FS ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static inline int nilfs_valid_fs(struct the_nilfs *nilfs)
{
 unsigned int valid_fs;

 down_read(&nilfs->ns_sem);
 valid_fs = (nilfs->ns_mount_state & NILFS_VALID_FS);
 up_read(&nilfs->ns_sem);
 return valid_fs;
}
