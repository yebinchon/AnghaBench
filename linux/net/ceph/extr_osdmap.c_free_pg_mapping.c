
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_mapping {int node; } ;


 int RB_EMPTY_NODE (int *) ;
 int WARN_ON (int) ;
 int kfree (struct ceph_pg_mapping*) ;

__attribute__((used)) static void free_pg_mapping(struct ceph_pg_mapping *pg)
{
 WARN_ON(!RB_EMPTY_NODE(&pg->node));

 kfree(pg);
}
