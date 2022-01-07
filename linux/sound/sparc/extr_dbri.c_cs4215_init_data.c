
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs4215 {int* data; int* ctrl; int version; int precision; int channels; scalar_t__ status; } ;
struct TYPE_2__ {int csval; int xtal; } ;


 int CS4215_BSEL_128 ;
 int CS4215_DFR_ULAW ;
 TYPE_1__* CS4215_FREQ ;
 int CS4215_HE ;
 int CS4215_IS ;
 int CS4215_LE ;
 int CS4215_LG (int) ;
 int CS4215_LO (int) ;
 int CS4215_MA (int) ;
 int CS4215_MLB ;
 int CS4215_PIO0 ;
 int CS4215_PIO1 ;
 int CS4215_RG (int) ;
 int CS4215_RO (int) ;
 int CS4215_RSRVD_1 ;
 int CS4215_SE ;
 int CS4215_XCLK ;

__attribute__((used)) static int cs4215_init_data(struct cs4215 *mm)
{







 mm->data[0] = CS4215_LO(0x20) | CS4215_HE | CS4215_LE;
 mm->data[1] = CS4215_RO(0x20) | CS4215_SE;
 mm->data[2] = CS4215_LG(0x8) | CS4215_IS | CS4215_PIO0 | CS4215_PIO1;
 mm->data[3] = CS4215_RG(0x8) | CS4215_MA(0xf);
 mm->ctrl[0] = CS4215_RSRVD_1 | CS4215_MLB;
 mm->ctrl[1] = CS4215_DFR_ULAW | CS4215_FREQ[0].csval;
 mm->ctrl[2] = CS4215_XCLK | CS4215_BSEL_128 | CS4215_FREQ[0].xtal;
 mm->ctrl[3] = 0;

 mm->status = 0;
 mm->version = 0xff;
 mm->precision = 8;
 mm->channels = 1;

 return 0;
}
