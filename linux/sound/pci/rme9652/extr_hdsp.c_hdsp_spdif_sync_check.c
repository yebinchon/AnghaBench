
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_SPDIFErrorFlag ;
 int HDSP_SPDIFSync ;
 int HDSP_statusRegister ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int hdsp_spdif_sync_check(struct hdsp *hdsp)
{
 int status = hdsp_read(hdsp, HDSP_statusRegister);
 if (status & HDSP_SPDIFErrorFlag)
  return 0;
 else {
  if (status & HDSP_SPDIFSync)
   return 2;
  else
   return 1;
 }
 return 0;
}
