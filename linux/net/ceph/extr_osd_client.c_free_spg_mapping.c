
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_spg_mapping {int backoffs; int node; } ;


 int RB_EMPTY_NODE (int *) ;
 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;
 int kfree (struct ceph_spg_mapping*) ;

__attribute__((used)) static void free_spg_mapping(struct ceph_spg_mapping *spg)
{
 WARN_ON(!RB_EMPTY_NODE(&spg->node));
 WARN_ON(!RB_EMPTY_ROOT(&spg->backoffs));

 kfree(spg);
}
