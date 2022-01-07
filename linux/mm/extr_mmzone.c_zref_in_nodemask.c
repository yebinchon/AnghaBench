
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoneref {int dummy; } ;
typedef int nodemask_t ;


 int node_isset (int ,int ) ;
 int zonelist_node_idx (struct zoneref*) ;

__attribute__((used)) static inline int zref_in_nodemask(struct zoneref *zref, nodemask_t *nodes)
{



 return 1;

}
