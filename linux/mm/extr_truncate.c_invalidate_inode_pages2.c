
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int invalidate_inode_pages2_range (struct address_space*,int ,int) ;

int invalidate_inode_pages2(struct address_space *mapping)
{
 return invalidate_inode_pages2_range(mapping, 0, -1);
}
