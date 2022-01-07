
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int msr; } ;
struct src {unsigned int multi; TYPE_3__* ops; TYPE_1__ rsc; } ;
struct ct_atc_pcm {int started; int timer; TYPE_2__* vm_block; struct src* src; } ;
struct ct_atc {int dummy; } ;
struct TYPE_6__ {int (* commit_write ) (struct src*) ;int (* set_state ) (struct src*,int ) ;int (* set_bm ) (struct src*,int) ;int (* set_cisz ) (struct src*,unsigned int) ;int (* set_ca ) (struct src*,scalar_t__) ;int (* set_la ) (struct src*,scalar_t__) ;int (* set_sa ) (struct src*,scalar_t__) ;} ;
struct TYPE_5__ {scalar_t__ addr; scalar_t__ size; } ;


 int SRC_STATE_INIT ;
 int ct_timer_start (int ) ;
 int stub1 (struct src*,scalar_t__) ;
 int stub2 (struct src*,scalar_t__) ;
 int stub3 (struct src*,scalar_t__) ;
 int stub4 (struct src*,unsigned int) ;
 int stub5 (struct src*,int) ;
 int stub6 (struct src*,int ) ;
 int stub7 (struct src*) ;

__attribute__((used)) static int atc_pcm_playback_start(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 unsigned int max_cisz;
 struct src *src = apcm->src;

 if (apcm->started)
  return 0;
 apcm->started = 1;

 max_cisz = src->multi * src->rsc.msr;
 max_cisz = 0x80 * (max_cisz < 8 ? max_cisz : 8);

 src->ops->set_sa(src, apcm->vm_block->addr);
 src->ops->set_la(src, apcm->vm_block->addr + apcm->vm_block->size);
 src->ops->set_ca(src, apcm->vm_block->addr + max_cisz);
 src->ops->set_cisz(src, max_cisz);

 src->ops->set_bm(src, 1);
 src->ops->set_state(src, SRC_STATE_INIT);
 src->ops->commit_write(src);

 ct_timer_start(apcm->timer);
 return 0;
}
