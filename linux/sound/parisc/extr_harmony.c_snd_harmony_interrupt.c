
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int graveyard_intr; int rec_intr; int silence_intr; int play_intr; } ;
struct TYPE_11__ {scalar_t__ addr; } ;
struct TYPE_10__ {int buf; scalar_t__ addr; int size; scalar_t__ count; } ;
struct TYPE_9__ {scalar_t__ capturing; scalar_t__ playing; } ;
struct TYPE_8__ {scalar_t__ addr; } ;
struct TYPE_7__ {int buf; scalar_t__ addr; int size; scalar_t__ count; } ;
struct snd_harmony {int lock; TYPE_6__ stats; TYPE_5__ gdma; scalar_t__ csubs; TYPE_4__ cbuf; TYPE_3__ st; TYPE_2__ sdma; scalar_t__ psubs; TYPE_1__ pbuf; } ;
typedef int irqreturn_t ;


 int HARMONY_DSTATUS ;
 int HARMONY_DSTATUS_PN ;
 int HARMONY_DSTATUS_RN ;
 int HARMONY_PNXTADD ;
 int HARMONY_RNXTADD ;
 int IRQ_HANDLED ;
 int harmony_disable_interrupts (struct snd_harmony*) ;
 int harmony_enable_interrupts (struct snd_harmony*) ;
 int harmony_read (struct snd_harmony*,int ) ;
 int harmony_wait_for_control (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,scalar_t__) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
snd_harmony_interrupt(int irq, void *dev)
{
 u32 dstatus;
 struct snd_harmony *h = dev;

 spin_lock(&h->lock);
 harmony_disable_interrupts(h);
 harmony_wait_for_control(h);
 dstatus = harmony_read(h, HARMONY_DSTATUS);
 spin_unlock(&h->lock);

 if (dstatus & HARMONY_DSTATUS_PN) {
  if (h->psubs && h->st.playing) {
   spin_lock(&h->lock);
   h->pbuf.buf += h->pbuf.count;
   h->pbuf.buf %= h->pbuf.size;

   harmony_write(h, HARMONY_PNXTADD,
          h->pbuf.addr + h->pbuf.buf);
   h->stats.play_intr++;
   spin_unlock(&h->lock);
                        snd_pcm_period_elapsed(h->psubs);
  } else {
   spin_lock(&h->lock);
   harmony_write(h, HARMONY_PNXTADD, h->sdma.addr);
   h->stats.silence_intr++;
   spin_unlock(&h->lock);
  }
 }

 if (dstatus & HARMONY_DSTATUS_RN) {
  if (h->csubs && h->st.capturing) {
   spin_lock(&h->lock);
   h->cbuf.buf += h->cbuf.count;
   h->cbuf.buf %= h->cbuf.size;

   harmony_write(h, HARMONY_RNXTADD,
          h->cbuf.addr + h->cbuf.buf);
   h->stats.rec_intr++;
   spin_unlock(&h->lock);
                        snd_pcm_period_elapsed(h->csubs);
  } else {
   spin_lock(&h->lock);
   harmony_write(h, HARMONY_RNXTADD, h->gdma.addr);
   h->stats.graveyard_intr++;
   spin_unlock(&h->lock);
  }
 }

 spin_lock(&h->lock);
 harmony_enable_interrupts(h);
 spin_unlock(&h->lock);

 return IRQ_HANDLED;
}
