
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int asXtalkCoefsPipe ;
 int asXtalkCoefsZeros ;
 int vortex_XtalkHw_SetDelay (int *,int ,int ) ;
 int vortex_XtalkHw_SetLeftEQ (int *,int ,int,int ) ;
 int vortex_XtalkHw_SetLeftXT (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightEQ (int *,int ,int,int ) ;
 int vortex_XtalkHw_SetRightXT (int *,int ,int ,int ) ;

__attribute__((used)) static void vortex_XtalkHw_ProgramPipe(vortex_t * vortex)
{

 vortex_XtalkHw_SetLeftEQ(vortex, 0, 1, asXtalkCoefsPipe);
 vortex_XtalkHw_SetRightEQ(vortex, 0, 1, asXtalkCoefsPipe);
 vortex_XtalkHw_SetLeftXT(vortex, 0, 0, asXtalkCoefsZeros);
 vortex_XtalkHw_SetRightXT(vortex, 0, 0, asXtalkCoefsZeros);

 vortex_XtalkHw_SetDelay(vortex, 0, 0);
}
