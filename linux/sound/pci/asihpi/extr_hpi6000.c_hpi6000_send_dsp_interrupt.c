
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp_obj {int prHPI_control; } ;


 int iowrite32 (int,int ) ;

__attribute__((used)) static void hpi6000_send_dsp_interrupt(struct dsp_obj *pdo)
{
 iowrite32(0x00030003, pdo->prHPI_control);
}
