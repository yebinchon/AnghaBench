
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_SYNC_FROM_ADAT1 ;
 int HDSP_SYNC_FROM_ADAT2 ;
 int HDSP_SYNC_FROM_ADAT3 ;
 int HDSP_SYNC_FROM_ADAT_SYNC ;
 int HDSP_SYNC_FROM_SPDIF ;
 int HDSP_SYNC_FROM_WORD ;
 int HDSP_SyncRefMask ;







__attribute__((used)) static int hdsp_pref_sync_ref(struct hdsp *hdsp)
{




 switch (hdsp->control_register & HDSP_SyncRefMask) {
 case 133:
  return HDSP_SYNC_FROM_ADAT1;
 case 132:
  return HDSP_SYNC_FROM_ADAT2;
 case 131:
  return HDSP_SYNC_FROM_ADAT3;
 case 129:
  return HDSP_SYNC_FROM_SPDIF;
 case 128:
  return HDSP_SYNC_FROM_WORD;
 case 130:
  return HDSP_SYNC_FROM_ADAT_SYNC;
 default:
  return HDSP_SYNC_FROM_WORD;
 }
 return 0;
}
