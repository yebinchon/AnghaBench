
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_statusRegister2 ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_aes_sync_check(struct hdspm *hdspm, int idx)
{
 int status2, lock, sync;
 status2 = hdspm_read(hdspm, HDSPM_statusRegister2);

 lock = (status2 & (0x0080 >> idx)) ? 1 : 0;
 sync = (status2 & (0x8000 >> idx)) ? 1 : 0;

 if (sync)
  return 2;
 else if (lock)
  return 1;
 return 0;
}
