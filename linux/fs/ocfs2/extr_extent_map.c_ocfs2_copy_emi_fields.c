
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_map_item {int ei_flags; int ei_clusters; int ei_phys; int ei_cpos; } ;



__attribute__((used)) static void ocfs2_copy_emi_fields(struct ocfs2_extent_map_item *dest,
      struct ocfs2_extent_map_item *src)
{
 dest->ei_cpos = src->ei_cpos;
 dest->ei_phys = src->ei_phys;
 dest->ei_clusters = src->ei_clusters;
 dest->ei_flags = src->ei_flags;
}
