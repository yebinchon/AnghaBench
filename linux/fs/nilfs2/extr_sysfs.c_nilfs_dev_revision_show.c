
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct the_nilfs {struct nilfs_super_block** ns_sbp; } ;
struct nilfs_super_block {int s_minor_rev_level; int s_rev_level; } ;
struct nilfs_dev_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static
ssize_t nilfs_dev_revision_show(struct nilfs_dev_attr *attr,
    struct the_nilfs *nilfs,
    char *buf)
{
 struct nilfs_super_block **sbp = nilfs->ns_sbp;
 u32 major = le32_to_cpu(sbp[0]->s_rev_level);
 u16 minor = le16_to_cpu(sbp[0]->s_minor_rev_level);

 return snprintf(buf, PAGE_SIZE, "%d.%d\n", major, minor);
}
