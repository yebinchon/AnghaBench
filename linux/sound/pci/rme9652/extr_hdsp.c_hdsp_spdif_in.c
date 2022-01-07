
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_SPDIFInputMask ;
 unsigned int hdsp_decode_spdif_in (int) ;

__attribute__((used)) static unsigned int hdsp_spdif_in(struct hdsp *hdsp)
{
 return hdsp_decode_spdif_in(hdsp->control_register & HDSP_SPDIFInputMask);
}
