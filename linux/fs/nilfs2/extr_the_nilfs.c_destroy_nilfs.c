
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int * ns_sbh; } ;


 int brelse (int ) ;
 int kfree (struct the_nilfs*) ;
 int might_sleep () ;
 scalar_t__ nilfs_init (struct the_nilfs*) ;
 int nilfs_sysfs_delete_device_group (struct the_nilfs*) ;

void destroy_nilfs(struct the_nilfs *nilfs)
{
 might_sleep();
 if (nilfs_init(nilfs)) {
  nilfs_sysfs_delete_device_group(nilfs);
  brelse(nilfs->ns_sbh[0]);
  brelse(nilfs->ns_sbh[1]);
 }
 kfree(nilfs);
}
