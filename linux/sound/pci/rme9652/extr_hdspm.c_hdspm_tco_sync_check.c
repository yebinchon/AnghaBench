
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; scalar_t__ tco; } ;




 int HDSPM_RD_STATUS_1 ;
 int HDSPM_statusRegister ;
 int HDSPM_tcoLockAes ;
 int HDSPM_tcoLockMadi ;
 int HDSPM_tcoSync ;


 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_tco_sync_check(struct hdspm *hdspm)
{
 int status;

 if (hdspm->tco) {
  switch (hdspm->io_type) {
  case 129:
   status = hdspm_read(hdspm, HDSPM_statusRegister);
   if (status & HDSPM_tcoLockMadi) {
    if (status & HDSPM_tcoSync)
     return 2;
    else
     return 1;
   }
   return 0;
  case 131:
   status = hdspm_read(hdspm, HDSPM_statusRegister);
   if (status & HDSPM_tcoLockAes) {
    if (status & HDSPM_tcoSync)
     return 2;
    else
     return 1;
   }
   return 0;
  case 128:
  case 130:
   status = hdspm_read(hdspm, HDSPM_RD_STATUS_1);

   if (status & 0x8000000)
    return 2;
   if (status & 0x4000000)
    return 1;
   return 0;

  default:
   break;
  }
 }

 return 3;
}
