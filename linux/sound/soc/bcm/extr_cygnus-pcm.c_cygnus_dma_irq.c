
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cygnus_audio {scalar_t__ audio; } ;
typedef int irqreturn_t ;


 int ANY_CAPTURE_IRQ ;
 int ANY_PLAYBACK_IRQ ;
 scalar_t__ INTH_R5F_CLEAR_OFFSET ;
 scalar_t__ INTH_R5F_STATUS_OFFSET ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int handle_capture_irq (struct cygnus_audio*) ;
 int handle_playback_irq (struct cygnus_audio*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t cygnus_dma_irq(int irq, void *data)
{
 u32 r5_status;
 struct cygnus_audio *cygaud = data;
 r5_status = readl(cygaud->audio + INTH_R5F_STATUS_OFFSET);

 if (!(r5_status & (ANY_PLAYBACK_IRQ | ANY_CAPTURE_IRQ)))
  return IRQ_NONE;


 if (ANY_PLAYBACK_IRQ & r5_status) {
  handle_playback_irq(cygaud);
  writel(ANY_PLAYBACK_IRQ & r5_status,
   cygaud->audio + INTH_R5F_CLEAR_OFFSET);
 }


 if (ANY_CAPTURE_IRQ & r5_status) {
  handle_capture_irq(cygaud);
  writel(ANY_CAPTURE_IRQ & r5_status,
   cygaud->audio + INTH_R5F_CLEAR_OFFSET);
 }

 return IRQ_HANDLED;
}
