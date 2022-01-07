
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {struct skl_module_cfg* priv; } ;
struct skl_module_cfg {TYPE_1__* pipe; } ;
struct skl_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ conn_type; } ;


 scalar_t__ SKL_PIPE_CONN_TYPE_FE ;
 int skl_run_pipe (struct skl_dev*,TYPE_1__*) ;
 int skl_tplg_bind_sinks (struct snd_soc_dapm_widget*,struct skl_dev*,struct snd_soc_dapm_widget*,struct skl_module_cfg*) ;

__attribute__((used)) static int skl_tplg_pga_dapm_pre_pmu_event(struct snd_soc_dapm_widget *w,
       struct skl_dev *skl)
{
 struct skl_module_cfg *src_mconfig;
 int ret = 0;

 src_mconfig = w->priv;






 ret = skl_tplg_bind_sinks(w, skl, w, src_mconfig);
 if (ret)
  return ret;


 if (src_mconfig->pipe->conn_type != SKL_PIPE_CONN_TYPE_FE)
  return skl_run_pipe(skl, src_mconfig->pipe);

 return 0;
}
