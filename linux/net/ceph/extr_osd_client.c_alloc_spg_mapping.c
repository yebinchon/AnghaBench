
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_spg_mapping {int backoffs; int node; } ;


 int GFP_NOIO ;
 int RB_CLEAR_NODE (int *) ;
 int RB_ROOT ;
 struct ceph_spg_mapping* kmalloc (int,int ) ;

__attribute__((used)) static struct ceph_spg_mapping *alloc_spg_mapping(void)
{
 struct ceph_spg_mapping *spg;

 spg = kmalloc(sizeof(*spg), GFP_NOIO);
 if (!spg)
  return ((void*)0);

 RB_CLEAR_NODE(&spg->node);
 spg->backoffs = RB_ROOT;
 return spg;
}
