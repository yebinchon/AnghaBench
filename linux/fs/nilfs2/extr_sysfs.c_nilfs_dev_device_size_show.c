
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct the_nilfs {struct nilfs_super_block** ns_sbp; } ;
struct nilfs_super_block {int s_dev_size; } ;
struct nilfs_dev_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int le64_to_cpu (int ) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static
ssize_t nilfs_dev_device_size_show(struct nilfs_dev_attr *attr,
        struct the_nilfs *nilfs,
        char *buf)
{
 struct nilfs_super_block **sbp = nilfs->ns_sbp;
 u64 dev_size = le64_to_cpu(sbp[0]->s_dev_size);

 return snprintf(buf, PAGE_SIZE, "%llu\n", dev_size);
}
