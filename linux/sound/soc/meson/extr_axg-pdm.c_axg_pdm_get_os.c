
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ds; } ;
struct axg_pdm_filters {TYPE_3__* lpf; TYPE_2__ hcic; } ;
struct axg_pdm {TYPE_1__* cfg; } ;
struct TYPE_6__ {unsigned int ds; } ;
struct TYPE_4__ {struct axg_pdm_filters* filters; } ;


 int PDM_LPF_NUM ;

__attribute__((used)) static unsigned int axg_pdm_get_os(struct axg_pdm *priv)
{
 const struct axg_pdm_filters *filters = priv->cfg->filters;
 unsigned int os = filters->hcic.ds;
 int i;






 for (i = 0; i < PDM_LPF_NUM; i++)
  os *= filters->lpf[i].ds;

 return os;
}
