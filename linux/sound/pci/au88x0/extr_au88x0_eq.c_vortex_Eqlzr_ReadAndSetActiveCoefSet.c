
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int this10; int coefset; } ;
struct TYPE_5__ {TYPE_2__ eq; } ;
typedef TYPE_1__ vortex_t ;
typedef TYPE_2__ eqlzr_t ;
typedef int auxxEqCoeffSet_t ;


 int asEqCoefsNormal ;
 int eq_gains_normal ;
 int memcpy (int *,int *,int) ;
 int vortex_Eqlzr_SetAllBands (TYPE_1__*,int ,int) ;

__attribute__((used)) static void vortex_Eqlzr_ReadAndSetActiveCoefSet(vortex_t * vortex)
{
 eqlzr_t *eq = &(vortex->eq);


 memcpy(&(eq->coefset), &asEqCoefsNormal, sizeof(auxxEqCoeffSet_t));

 vortex_Eqlzr_SetAllBands(vortex, eq_gains_normal, eq->this10 * 2);
}
