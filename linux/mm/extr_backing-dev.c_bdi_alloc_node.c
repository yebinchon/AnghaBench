
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;
typedef int gfp_t ;


 int __GFP_ZERO ;
 scalar_t__ bdi_init (struct backing_dev_info*) ;
 int kfree (struct backing_dev_info*) ;
 struct backing_dev_info* kmalloc_node (int,int,int) ;

struct backing_dev_info *bdi_alloc_node(gfp_t gfp_mask, int node_id)
{
 struct backing_dev_info *bdi;

 bdi = kmalloc_node(sizeof(struct backing_dev_info),
      gfp_mask | __GFP_ZERO, node_id);
 if (!bdi)
  return ((void*)0);

 if (bdi_init(bdi)) {
  kfree(bdi);
  return ((void*)0);
 }
 return bdi;
}
