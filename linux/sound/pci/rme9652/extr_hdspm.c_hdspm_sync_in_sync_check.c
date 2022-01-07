
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; } ;




 int HDSPM_RD_STATUS_3 ;
 int HDSPM_statusRegister ;
 int HDSPM_statusRegister2 ;
 int HDSPM_syncInLock ;
 int HDSPM_syncInSync ;



 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_sync_in_sync_check(struct hdspm *hdspm)
{
 int status, lock = 0, sync = 0;

 switch (hdspm->io_type) {
 case 128:
 case 131:
  status = hdspm_read(hdspm, HDSPM_RD_STATUS_3);
  lock = (status & 0x400) ? 1 : 0;
  sync = (status & 0x800) ? 1 : 0;
  break;

 case 130:
  status = hdspm_read(hdspm, HDSPM_statusRegister);
  lock = (status & HDSPM_syncInLock) ? 1 : 0;
  sync = (status & HDSPM_syncInSync) ? 1 : 0;
  break;

 case 132:
  status = hdspm_read(hdspm, HDSPM_statusRegister2);
  lock = (status & 0x100000) ? 1 : 0;
  sync = (status & 0x200000) ? 1 : 0;
  break;

 case 129:
  break;
 }

 if (lock && sync)
  return 2;
 else if (lock)
  return 1;

 return 0;
}
