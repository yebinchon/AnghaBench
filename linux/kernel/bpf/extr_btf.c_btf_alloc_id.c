
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int id; } ;


 int ENOSPC ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int btf_idr ;
 int btf_idr_lock ;
 int idr_alloc_cyclic (int *,struct btf*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int btf_alloc_id(struct btf *btf)
{
 int id;

 idr_preload(GFP_KERNEL);
 spin_lock_bh(&btf_idr_lock);
 id = idr_alloc_cyclic(&btf_idr, btf, 1, INT_MAX, GFP_ATOMIC);
 if (id > 0)
  btf->id = id;
 spin_unlock_bh(&btf_idr_lock);
 idr_preload_end();

 if (WARN_ON_ONCE(!id))
  return -ENOSPC;

 return id > 0 ? 0 : id;
}
