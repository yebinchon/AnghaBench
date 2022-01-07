
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; } ;




 int HDSPM_AES32_wcLock ;
 int HDSPM_AES32_wcSync ;
 int HDSPM_statusRegister ;
 int HDSPM_statusRegister2 ;
 int HDSPM_wcLock ;
 int HDSPM_wcSync ;



 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_wc_sync_check(struct hdspm *hdspm)
{
 int status, status2;

 switch (hdspm->io_type) {
 case 132:
  status = hdspm_read(hdspm, HDSPM_statusRegister);
  if (status & HDSPM_AES32_wcLock) {
   if (status & HDSPM_AES32_wcSync)
    return 2;
   else
    return 1;
  }
  return 0;
  break;

 case 130:
  status2 = hdspm_read(hdspm, HDSPM_statusRegister2);
  if (status2 & HDSPM_wcLock) {
   if (status2 & HDSPM_wcSync)
    return 2;
   else
    return 1;
  }
  return 0;
  break;

 case 128:
 case 131:
  status = hdspm_read(hdspm, HDSPM_statusRegister);

  if (status & 0x2000000)
   return 2;
  else if (status & 0x1000000)
   return 1;
  return 0;

  break;

 case 129:
  break;
 }


 return 3;
}
