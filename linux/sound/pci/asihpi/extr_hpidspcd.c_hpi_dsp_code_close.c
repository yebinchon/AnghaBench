
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsp_code {TYPE_1__* pvt; } ;
struct TYPE_2__ {int firmware; } ;


 int DEBUG ;
 int HPI_DEBUG_LOG (int ,char*) ;
 int kfree (TYPE_1__*) ;
 int release_firmware (int ) ;

void hpi_dsp_code_close(struct dsp_code *dsp_code)
{
 HPI_DEBUG_LOG(DEBUG, "dsp code closed\n");
 release_firmware(dsp_code->pvt->firmware);
 kfree(dsp_code->pvt);
}
