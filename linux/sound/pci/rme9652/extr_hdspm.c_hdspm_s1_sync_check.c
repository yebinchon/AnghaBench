
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_RD_STATUS_1 ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_s1_sync_check(struct hdspm *hdspm, int idx)
{
 int status, lock, sync;

 status = hdspm_read(hdspm, HDSPM_RD_STATUS_1);

 lock = (status & (0x1<<idx)) ? 1 : 0;
 sync = (status & (0x100<<idx)) ? 1 : 0;

 if (lock && sync)
  return 2;
 else if (lock)
  return 1;
 return 0;
}
