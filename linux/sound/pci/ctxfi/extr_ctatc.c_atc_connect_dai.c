
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct srcimp {TYPE_2__* ops; } ;
struct src_mgr {int (* commit_write ) (struct src_mgr*) ;int (* src_enable_s ) (struct src_mgr*,struct src*) ;int (* src_disable ) (struct src_mgr*,struct src*) ;} ;
struct src {int rsc; TYPE_3__* ops; } ;
struct rsc {int dummy; } ;
struct TYPE_5__ {struct rsc rscr; struct rsc rscl; } ;
struct dai {TYPE_4__* ops; TYPE_1__ daio; } ;
struct TYPE_8__ {int (* commit_write ) (struct dai*) ;int (* set_enb_srt ) (struct dai*,int) ;int (* set_enb_src ) (struct dai*,int) ;int (* set_srt_srcr ) (struct dai*,int *) ;int (* set_srt_srcl ) (struct dai*,int *) ;} ;
struct TYPE_7__ {int (* commit_write ) (struct src*) ;int (* set_state ) (struct src*,int ) ;int (* set_pm ) (struct src*,int) ;} ;
struct TYPE_6__ {int (* map ) (struct srcimp*,struct src*,struct rsc*) ;} ;


 int SRC_STATE_RUN ;
 int stub1 (struct srcimp*,struct src*,struct rsc*) ;
 int stub10 (struct dai*,int) ;
 int stub11 (struct dai*,int) ;
 int stub12 (struct dai*) ;
 int stub13 (struct src_mgr*) ;
 int stub2 (struct src_mgr*,struct src*) ;
 int stub3 (struct src_mgr*) ;
 int stub4 (struct src*,int) ;
 int stub5 (struct src*,int ) ;
 int stub6 (struct src*) ;
 int stub7 (struct src_mgr*,struct src*) ;
 int stub8 (struct dai*,int *) ;
 int stub9 (struct dai*,int *) ;

__attribute__((used)) static void
atc_connect_dai(struct src_mgr *src_mgr, struct dai *dai,
  struct src **srcs, struct srcimp **srcimps)
{
 struct rsc *rscs[2] = {((void*)0)};
 struct src *src;
 struct srcimp *srcimp;
 int i = 0;

 rscs[0] = &dai->daio.rscl;
 rscs[1] = &dai->daio.rscr;
 for (i = 0; i < 2; i++) {
  src = srcs[i];
  srcimp = srcimps[i];
  srcimp->ops->map(srcimp, src, rscs[i]);
  src_mgr->src_disable(src_mgr, src);
 }

 src_mgr->commit_write(src_mgr);

 src = srcs[0];
 src->ops->set_pm(src, 1);
 for (i = 0; i < 2; i++) {
  src = srcs[i];
  src->ops->set_state(src, SRC_STATE_RUN);
  src->ops->commit_write(src);
  src_mgr->src_enable_s(src_mgr, src);
 }

 dai->ops->set_srt_srcl(dai, &(srcs[0]->rsc));
 dai->ops->set_srt_srcr(dai, &(srcs[1]->rsc));

 dai->ops->set_enb_src(dai, 1);
 dai->ops->set_enb_srt(dai, 1);
 dai->ops->commit_write(dai);

 src_mgr->commit_write(src_mgr);
}
