
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct resv_map {int dummy; } ;
struct hstate {int dummy; } ;
typedef int pgoff_t ;
typedef enum vma_resv_mode { ____Placeholder_vma_resv_mode } vma_resv_mode ;


 int BUG () ;
 int HPAGE_RESV_OWNER ;




 int VM_MAYSHARE ;
 scalar_t__ is_vma_resv_set (struct vm_area_struct*,int ) ;
 int region_abort (struct resv_map*,int ,int ) ;
 long region_add (struct resv_map*,int ,int ) ;
 long region_chg (struct resv_map*,int ,int ) ;
 long region_del (struct resv_map*,int ,int ) ;
 int vma_hugecache_offset (struct hstate*,struct vm_area_struct*,unsigned long) ;
 struct resv_map* vma_resv_map (struct vm_area_struct*) ;

__attribute__((used)) static long __vma_reservation_common(struct hstate *h,
    struct vm_area_struct *vma, unsigned long addr,
    enum vma_resv_mode mode)
{
 struct resv_map *resv;
 pgoff_t idx;
 long ret;

 resv = vma_resv_map(vma);
 if (!resv)
  return 1;

 idx = vma_hugecache_offset(h, vma, addr);
 switch (mode) {
 case 128:
  ret = region_chg(resv, idx, idx + 1);
  break;
 case 130:
  ret = region_add(resv, idx, idx + 1);
  break;
 case 129:
  region_abort(resv, idx, idx + 1);
  ret = 0;
  break;
 case 131:
  if (vma->vm_flags & VM_MAYSHARE)
   ret = region_add(resv, idx, idx + 1);
  else {
   region_abort(resv, idx, idx + 1);
   ret = region_del(resv, idx, idx + 1);
  }
  break;
 default:
  BUG();
 }

 if (vma->vm_flags & VM_MAYSHARE)
  return ret;
 else if (is_vma_resv_set(vma, HPAGE_RESV_OWNER) && ret >= 0) {
  if (ret)
   return 0;
  else
   return 1;
 }
 else
  return ret < 0 ? ret : 0;
}
