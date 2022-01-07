
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_HIGHUSER_MOVABLE ;
 int gfp_zone (int ) ;
 unsigned long nr_free_zone_pages (int ) ;

unsigned long nr_free_pagecache_pages(void)
{
 return nr_free_zone_pages(gfp_zone(GFP_HIGHUSER_MOVABLE));
}
