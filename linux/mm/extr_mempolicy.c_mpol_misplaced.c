
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zoneref {int zone; } ;
struct vm_area_struct {unsigned long vm_pgoff; int vm_start; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int preferred_node; int nodes; } ;
struct mempolicy {int flags; int mode; TYPE_1__ v; } ;


 int BUG () ;
 int GFP_HIGHUSER ;

 int MPOL_F_LOCAL ;
 int MPOL_F_MOF ;
 int MPOL_F_MORON ;


 int NUMA_NO_NODE ;
 unsigned long PAGE_SHIFT ;
 int cpu_to_node (int) ;
 int current ;
 struct zoneref* first_zones_zonelist (int ,int ,int *) ;
 struct mempolicy* get_vma_policy (struct vm_area_struct*,unsigned long) ;
 int gfp_zone (int ) ;
 int mpol_cond_put (struct mempolicy*) ;
 int node_isset (int,int ) ;
 int node_zonelist (int,int ) ;
 int numa_node_id () ;
 int offset_il_node (struct mempolicy*,unsigned long) ;
 int page_to_nid (struct page*) ;
 int raw_smp_processor_id () ;
 int should_numa_migrate_memory (int ,struct page*,int,int) ;
 int zone_to_nid (int ) ;

int mpol_misplaced(struct page *page, struct vm_area_struct *vma, unsigned long addr)
{
 struct mempolicy *pol;
 struct zoneref *z;
 int curnid = page_to_nid(page);
 unsigned long pgoff;
 int thiscpu = raw_smp_processor_id();
 int thisnid = cpu_to_node(thiscpu);
 int polnid = NUMA_NO_NODE;
 int ret = -1;

 pol = get_vma_policy(vma, addr);
 if (!(pol->flags & MPOL_F_MOF))
  goto out;

 switch (pol->mode) {
 case 129:
  pgoff = vma->vm_pgoff;
  pgoff += (addr - vma->vm_start) >> PAGE_SHIFT;
  polnid = offset_il_node(pol, pgoff);
  break;

 case 128:
  if (pol->flags & MPOL_F_LOCAL)
   polnid = numa_node_id();
  else
   polnid = pol->v.preferred_node;
  break;

 case 130:







  if (node_isset(curnid, pol->v.nodes))
   goto out;
  z = first_zones_zonelist(
    node_zonelist(numa_node_id(), GFP_HIGHUSER),
    gfp_zone(GFP_HIGHUSER),
    &pol->v.nodes);
  polnid = zone_to_nid(z->zone);
  break;

 default:
  BUG();
 }


 if (pol->flags & MPOL_F_MORON) {
  polnid = thisnid;

  if (!should_numa_migrate_memory(current, page, curnid, thiscpu))
   goto out;
 }

 if (curnid != polnid)
  ret = polnid;
out:
 mpol_cond_put(pol);

 return ret;
}
