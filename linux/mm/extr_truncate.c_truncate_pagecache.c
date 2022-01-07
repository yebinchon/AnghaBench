
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int PAGE_SIZE ;
 int round_up (int ,int ) ;
 int truncate_inode_pages (struct address_space*,int ) ;
 int unmap_mapping_range (struct address_space*,int ,int ,int) ;

void truncate_pagecache(struct inode *inode, loff_t newsize)
{
 struct address_space *mapping = inode->i_mapping;
 loff_t holebegin = round_up(newsize, PAGE_SIZE);
 unmap_mapping_range(mapping, holebegin, 0, 1);
 truncate_inode_pages(mapping, newsize);
 unmap_mapping_range(mapping, holebegin, 0, 1);
}
