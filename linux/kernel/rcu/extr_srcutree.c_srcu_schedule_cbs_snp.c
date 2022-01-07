
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int sda; } ;
struct srcu_node {int grplo; int grphi; } ;


 int per_cpu_ptr (int ,int) ;
 int srcu_schedule_cbs_sdp (int ,unsigned long) ;

__attribute__((used)) static void srcu_schedule_cbs_snp(struct srcu_struct *ssp, struct srcu_node *snp,
      unsigned long mask, unsigned long delay)
{
 int cpu;

 for (cpu = snp->grplo; cpu <= snp->grphi; cpu++) {
  if (!(mask & (1 << (cpu - snp->grplo))))
   continue;
  srcu_schedule_cbs_sdp(per_cpu_ptr(ssp->sda, cpu), delay);
 }
}
