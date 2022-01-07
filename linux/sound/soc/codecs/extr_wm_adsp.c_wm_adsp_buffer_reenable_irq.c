
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_compr_buf {int irq_count; } ;


 int HOST_BUFFER_FIELD (int ) ;
 int compr_dbg (struct wm_adsp_compr_buf*,char*,int) ;
 int irq_ack ;
 int wm_adsp_buffer_write (struct wm_adsp_compr_buf*,int ,int) ;

__attribute__((used)) static int wm_adsp_buffer_reenable_irq(struct wm_adsp_compr_buf *buf)
{
 if (buf->irq_count & 0x01)
  return 0;

 compr_dbg(buf, "Enable IRQ(0x%x) for next fragment\n", buf->irq_count);

 buf->irq_count |= 0x01;

 return wm_adsp_buffer_write(buf, HOST_BUFFER_FIELD(irq_ack),
        buf->irq_count);
}
