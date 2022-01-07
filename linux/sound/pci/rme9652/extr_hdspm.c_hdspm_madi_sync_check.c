
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_madiLock ;
 int HDSPM_madiSync ;
 int HDSPM_statusRegister ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_madi_sync_check(struct hdspm *hdspm)
{
 int status = hdspm_read(hdspm, HDSPM_statusRegister);
 if (status & HDSPM_madiLock) {
  if (status & HDSPM_madiSync)
   return 2;
  else
   return 1;
 }
 return 0;
}
