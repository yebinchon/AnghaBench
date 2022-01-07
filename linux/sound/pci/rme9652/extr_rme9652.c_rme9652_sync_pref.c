
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_SYNC_FROM_ADAT1 ;
 int RME9652_SYNC_FROM_ADAT2 ;
 int RME9652_SYNC_FROM_ADAT3 ;
 int RME9652_SYNC_FROM_SPDIF ;



 int RME9652_SyncPref_Mask ;


__attribute__((used)) static int rme9652_sync_pref(struct snd_rme9652 *rme9652)
{
 switch (rme9652->control_register & RME9652_SyncPref_Mask) {
 case 131:
  return RME9652_SYNC_FROM_ADAT1;
 case 130:
  return RME9652_SYNC_FROM_ADAT2;
 case 129:
  return RME9652_SYNC_FROM_ADAT3;
 case 128:
  return RME9652_SYNC_FROM_SPDIF;
 }

 return 0;
}
