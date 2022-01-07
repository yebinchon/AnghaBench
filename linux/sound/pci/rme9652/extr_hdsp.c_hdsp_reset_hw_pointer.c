
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ io_type; int firmware_rev; int dds_value; } ;


 scalar_t__ H9632 ;
 int HDSP_freqReg ;
 int HDSP_resetPointer ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static void hdsp_reset_hw_pointer(struct hdsp *hdsp)
{
 hdsp_write (hdsp, HDSP_resetPointer, 0);
 if (hdsp->io_type == H9632 && hdsp->firmware_rev >= 152)



  hdsp_write (hdsp, HDSP_freqReg, hdsp->dds_value);
}
