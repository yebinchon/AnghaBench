
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned int spanned_pages; } ;
struct rtree_node {int dummy; } ;


 int BM_BITS_PER_BLOCK ;
 int BM_ENTRIES_PER_LEVEL ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int LINKED_PAGE_DATA_SIZE ;

unsigned int snapshot_additional_pages(struct zone *zone)
{
 unsigned int rtree, nodes;

 rtree = nodes = DIV_ROUND_UP(zone->spanned_pages, BM_BITS_PER_BLOCK);
 rtree += DIV_ROUND_UP(rtree * sizeof(struct rtree_node),
         LINKED_PAGE_DATA_SIZE);
 while (nodes > 1) {
  nodes = DIV_ROUND_UP(nodes, BM_ENTRIES_PER_LEVEL);
  rtree += nodes;
 }

 return 2 * rtree;
}
