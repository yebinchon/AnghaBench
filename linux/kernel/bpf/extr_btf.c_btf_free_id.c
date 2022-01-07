
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int id; } ;


 int btf_idr ;
 int btf_idr_lock ;
 int idr_remove (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void btf_free_id(struct btf *btf)
{
 unsigned long flags;
 spin_lock_irqsave(&btf_idr_lock, flags);
 idr_remove(&btf_idr, btf->id);
 spin_unlock_irqrestore(&btf_idr_lock, flags);
}
