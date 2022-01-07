
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int F2FS_M_SB (struct address_space*) ;
 int FAULT_PAGE_GET ;
 int f2fs_show_injection_info (int ) ;
 struct page* pagecache_get_page (struct address_space*,int ,int,int ) ;
 scalar_t__ time_to_inject (int ,int ) ;

__attribute__((used)) static inline struct page *f2fs_pagecache_get_page(
    struct address_space *mapping, pgoff_t index,
    int fgp_flags, gfp_t gfp_mask)
{
 if (time_to_inject(F2FS_M_SB(mapping), FAULT_PAGE_GET)) {
  f2fs_show_injection_info(FAULT_PAGE_GET);
  return ((void*)0);
 }

 return pagecache_get_page(mapping, index, fgp_flags, gfp_mask);
}
