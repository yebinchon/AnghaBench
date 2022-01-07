
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; int control_register; int settings_register; int tco; } ;




 int HDSPM_SyncRef0 ;
 int HDSPM_SyncRef1 ;
 int HDSPM_SyncRef2 ;
 int HDSPM_SyncRef3 ;
 int HDSPM_SyncRefMask ;
 int HDSPM_WR_SETTINGS ;
 int HDSPM_c0_SyncRef0 ;
 int HDSPM_c0_SyncRefMask ;
 int HDSPM_controlRegister ;



 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static int hdspm_set_pref_sync_ref(struct hdspm * hdspm, int pref)
{
 int p = 0;

 switch (hdspm->io_type) {
 case 132:
  hdspm->control_register &= ~HDSPM_SyncRefMask;
  switch (pref) {
  case 0:
   break;
  case 1:
   hdspm->control_register |= HDSPM_SyncRef0;
   break;
  case 2:
   hdspm->control_register |= HDSPM_SyncRef1;
   break;
  case 3:
   hdspm->control_register |=
    HDSPM_SyncRef1+HDSPM_SyncRef0;
   break;
  case 4:
   hdspm->control_register |= HDSPM_SyncRef2;
   break;
  case 5:
   hdspm->control_register |=
    HDSPM_SyncRef2+HDSPM_SyncRef0;
   break;
  case 6:
   hdspm->control_register |=
    HDSPM_SyncRef2+HDSPM_SyncRef1;
   break;
  case 7:
   hdspm->control_register |=
    HDSPM_SyncRef2+HDSPM_SyncRef1+HDSPM_SyncRef0;
   break;
  case 8:
   hdspm->control_register |= HDSPM_SyncRef3;
   break;
  case 9:
   hdspm->control_register |=
    HDSPM_SyncRef3+HDSPM_SyncRef0;
   break;
  default:
   return -1;
  }

  break;

 case 130:
 case 129:
  hdspm->control_register &= ~HDSPM_SyncRefMask;
  if (hdspm->tco) {
   switch (pref) {
   case 0:
    break;
   case 1:
    hdspm->control_register |= HDSPM_SyncRef0;
    break;
   case 2:
    hdspm->control_register |= HDSPM_SyncRef1;
    break;
   case 3:
    hdspm->control_register |=
     HDSPM_SyncRef0+HDSPM_SyncRef1;
    break;
   default:
    return -1;
   }
  } else {
   switch (pref) {
   case 0:
    break;
   case 1:
    hdspm->control_register |= HDSPM_SyncRef0;
    break;
   case 2:
    hdspm->control_register |=
     HDSPM_SyncRef0+HDSPM_SyncRef1;
    break;
   default:
    return -1;
   }
  }

  break;

 case 128:
  if (hdspm->tco) {
   switch (pref) {
   case 0: p = 0; break;
   case 1: p = 3; break;
   case 2: p = 4; break;
   case 3: p = 5; break;
   case 4: p = 6; break;
   case 5: p = 1; break;
   case 6: p = 2; break;
   case 7: p = 9; break;
   case 8: p = 10; break;
   default: return -1;
   }
  } else {
   switch (pref) {
   case 0: p = 0; break;
   case 1: p = 3; break;
   case 2: p = 4; break;
   case 3: p = 5; break;
   case 4: p = 6; break;
   case 5: p = 1; break;
   case 6: p = 2; break;
   case 7: p = 10; break;
   default: return -1;
   }
  }
  break;

 case 131:
  if (hdspm->tco) {
   switch (pref) {
   case 0: p = 0; break;
   case 1: p = 3; break;
   case 2: p = 1; break;
   case 3: p = 2; break;
   case 4: p = 9; break;
   case 5: p = 10; break;
   default: return -1;
   }
  } else {
   switch (pref) {
   case 0: p = 0; break;
   case 1: p = 3; break;
   case 2: p = 1; break;
   case 3: p = 2; break;
   case 4: p = 10; break;
   default: return -1;
   }
  }
  break;
 }

 switch (hdspm->io_type) {
 case 128:
 case 131:
  hdspm->settings_register &= ~HDSPM_c0_SyncRefMask;
  hdspm->settings_register |= HDSPM_c0_SyncRef0 * p;
  hdspm_write(hdspm, HDSPM_WR_SETTINGS, hdspm->settings_register);
  break;

 case 130:
 case 129:
 case 132:
  hdspm_write(hdspm, HDSPM_controlRegister,
    hdspm->control_register);
 }

 return 0;
}
