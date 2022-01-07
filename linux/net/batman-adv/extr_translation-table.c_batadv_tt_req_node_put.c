
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tt_req_node {int refcount; } ;


 int batadv_tt_req_node_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void batadv_tt_req_node_put(struct batadv_tt_req_node *tt_req_node)
{
 kref_put(&tt_req_node->refcount, batadv_tt_req_node_release);
}
