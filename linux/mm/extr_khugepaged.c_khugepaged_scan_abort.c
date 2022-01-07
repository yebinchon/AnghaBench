
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 scalar_t__* khugepaged_node_load ;
 scalar_t__ node_distance (int,int) ;
 scalar_t__ node_reclaim_distance ;
 int node_reclaim_mode ;

__attribute__((used)) static bool khugepaged_scan_abort(int nid)
{
 int i;





 if (!node_reclaim_mode)
  return 0;


 if (khugepaged_node_load[nid])
  return 0;

 for (i = 0; i < MAX_NUMNODES; i++) {
  if (!khugepaged_node_load[i])
   continue;
  if (node_distance(nid, i) > node_reclaim_distance)
   return 1;
 }
 return 0;
}
