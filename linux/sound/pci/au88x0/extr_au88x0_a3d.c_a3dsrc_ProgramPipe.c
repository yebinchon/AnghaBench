
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int a3dsrc_t ;


 int A3dHrirImpulse ;
 int a3dsrc_SetAtmosCurrent (int *,int ,int,int ,int ,int ) ;
 int a3dsrc_SetAtmosTarget (int *,int,int ,int ,int ,int ) ;
 int a3dsrc_SetGainCurrent (int *,int,int) ;
 int a3dsrc_SetGainTarget (int *,int,int) ;
 int a3dsrc_SetHrtfCurrent (int *,int ,int ) ;
 int a3dsrc_SetHrtfTarget (int *,int ,int ) ;
 int a3dsrc_SetItdCurrent (int *,int ,int ) ;
 int a3dsrc_SetItdTarget (int *,int ,int ) ;
 int a3dsrc_SetTimeConsts (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void a3dsrc_ProgramPipe(a3dsrc_t * a)
{
 a3dsrc_SetTimeConsts(a, 0, 0, 0, 0);
 a3dsrc_SetAtmosCurrent(a, 0, 0x4000, 0, 0, 0);
 a3dsrc_SetAtmosTarget(a, 0x4000, 0, 0, 0, 0);
 a3dsrc_SetItdCurrent(a, 0, 0);
 a3dsrc_SetItdTarget(a, 0, 0);
 a3dsrc_SetGainCurrent(a, 0x7fff, 0x7fff);
 a3dsrc_SetGainTarget(a, 0x7fff, 0x7fff);




 a3dsrc_SetHrtfCurrent(a, A3dHrirImpulse, A3dHrirImpulse);
 a3dsrc_SetHrtfTarget(a, A3dHrirImpulse, A3dHrirImpulse);




}
