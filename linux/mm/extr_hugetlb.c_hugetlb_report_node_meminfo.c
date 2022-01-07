
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int* nr_huge_pages_node; int* free_huge_pages_node; int* surplus_huge_pages_node; } ;


 struct hstate default_hstate ;
 int hugepages_supported () ;
 int sprintf (char*,char*,int,int,int,int,int,int) ;

int hugetlb_report_node_meminfo(int nid, char *buf)
{
 struct hstate *h = &default_hstate;
 if (!hugepages_supported())
  return 0;
 return sprintf(buf,
  "Node %d HugePages_Total: %5u\n"
  "Node %d HugePages_Free:  %5u\n"
  "Node %d HugePages_Surp:  %5u\n",
  nid, h->nr_huge_pages_node[nid],
  nid, h->free_huge_pages_node[nid],
  nid, h->surplus_huge_pages_node[nid]);
}
