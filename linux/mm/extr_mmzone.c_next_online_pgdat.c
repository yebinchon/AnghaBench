
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int node_id; } ;


 int MAX_NUMNODES ;
 struct pglist_data* NODE_DATA (int) ;
 int next_online_node (int ) ;

struct pglist_data *next_online_pgdat(struct pglist_data *pgdat)
{
 int nid = next_online_node(pgdat->node_id);

 if (nid == MAX_NUMNODES)
  return ((void*)0);
 return NODE_DATA(nid);
}
