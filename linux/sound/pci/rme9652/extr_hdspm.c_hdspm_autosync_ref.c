
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ io_type; } ;


 scalar_t__ AES32 ;
 int HDSPM_AES32_AUTOSYNC_FROM_NONE ;
 unsigned int HDSPM_AES32_AUTOSYNC_FROM_SYNC_IN ;
 unsigned int HDSPM_AES32_AUTOSYNC_FROM_WORD ;
 unsigned int HDSPM_AES32_syncref_bit ;
 int HDSPM_AUTOSYNC_FROM_MADI ;
 int HDSPM_AUTOSYNC_FROM_NONE ;
 int HDSPM_AUTOSYNC_FROM_SYNC_IN ;
 int HDSPM_AUTOSYNC_FROM_TCO ;
 int HDSPM_AUTOSYNC_FROM_WORD ;
 unsigned int HDSPM_SelSyncRefMask ;





 int HDSPM_statusRegister ;
 int HDSPM_statusRegister2 ;
 scalar_t__ MADI ;
 unsigned int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_autosync_ref(struct hdspm *hdspm)
{

 if (AES32 == hdspm->io_type) {

  unsigned int status = hdspm_read(hdspm, HDSPM_statusRegister);
  unsigned int syncref = (status >> HDSPM_AES32_syncref_bit) & 0xF;
  if ((syncref >= HDSPM_AES32_AUTOSYNC_FROM_WORD) &&
    (syncref <= HDSPM_AES32_AUTOSYNC_FROM_SYNC_IN)) {
   return syncref;
  }
  return HDSPM_AES32_AUTOSYNC_FROM_NONE;

 } else if (MADI == hdspm->io_type) {

  unsigned int status2 = hdspm_read(hdspm, HDSPM_statusRegister2);
  switch (status2 & HDSPM_SelSyncRefMask) {
  case 128:
   return HDSPM_AUTOSYNC_FROM_WORD;
  case 132:
   return HDSPM_AUTOSYNC_FROM_MADI;
  case 129:
   return HDSPM_AUTOSYNC_FROM_TCO;
  case 130:
   return HDSPM_AUTOSYNC_FROM_SYNC_IN;
  case 131:
   return HDSPM_AUTOSYNC_FROM_NONE;
  default:
   return HDSPM_AUTOSYNC_FROM_NONE;
  }

 }
 return 0;
}
