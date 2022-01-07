
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wb_domain {int dummy; } ;
struct bdi_writeback {TYPE_1__* bdi; int completions; } ;
struct TYPE_2__ {int max_prop_frac; } ;


 int WB_WRITTEN ;
 struct wb_domain global_wb_domain ;
 int inc_wb_stat (struct bdi_writeback*,int ) ;
 struct wb_domain* mem_cgroup_wb_domain (struct bdi_writeback*) ;
 int wb_domain_writeout_inc (struct wb_domain*,int *,int ) ;
 int * wb_memcg_completions (struct bdi_writeback*) ;

__attribute__((used)) static inline void __wb_writeout_inc(struct bdi_writeback *wb)
{
 struct wb_domain *cgdom;

 inc_wb_stat(wb, WB_WRITTEN);
 wb_domain_writeout_inc(&global_wb_domain, &wb->completions,
          wb->bdi->max_prop_frac);

 cgdom = mem_cgroup_wb_domain(wb);
 if (cgdom)
  wb_domain_writeout_inc(cgdom, wb_memcg_completions(wb),
           wb->bdi->max_prop_frac);
}
