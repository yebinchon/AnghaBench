
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef unsigned long __u64 ;


 unsigned long do_div (unsigned long,int ) ;
 int nilfs_palloc_entries_per_group (struct inode const*) ;

__attribute__((used)) static unsigned long nilfs_palloc_group(const struct inode *inode, __u64 nr,
     unsigned long *offset)
{
 __u64 group = nr;

 *offset = do_div(group, nilfs_palloc_entries_per_group(inode));
 return group;
}
