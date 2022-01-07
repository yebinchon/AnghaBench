
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int dummy; } ;
typedef int gfp_t ;


 int NODE_RECLAIM_NOSCAN ;

__attribute__((used)) static inline int node_reclaim(struct pglist_data *pgdat, gfp_t mask,
    unsigned int order)
{
 return NODE_RECLAIM_NOSCAN;
}
