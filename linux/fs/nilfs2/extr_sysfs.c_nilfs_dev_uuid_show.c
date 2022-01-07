
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {struct nilfs_super_block** ns_sbp; } ;
struct nilfs_super_block {int s_uuid; } ;
struct nilfs_dev_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static
ssize_t nilfs_dev_uuid_show(struct nilfs_dev_attr *attr,
       struct the_nilfs *nilfs,
       char *buf)
{
 struct nilfs_super_block **sbp = nilfs->ns_sbp;

 return snprintf(buf, PAGE_SIZE, "%pUb\n", sbp[0]->s_uuid);
}
