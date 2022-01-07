
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * a3d; } ;
typedef TYPE_1__ vortex_t ;


 int NR_A3D ;
 int Vort3DRend_Initialize (TYPE_1__*,int ) ;
 int XT_HEADPHONE ;
 int a3dsrc_ZeroStateA3D (int *,TYPE_1__*) ;
 int vortex_A3dSourceHw_Initialize (TYPE_1__*,int,int) ;
 int vortex_a3d_register_controls (TYPE_1__*) ;

__attribute__((used)) static void vortex_Vort3D_enable(vortex_t *v)
{
 int i;

 Vort3DRend_Initialize(v, XT_HEADPHONE);
 for (i = 0; i < NR_A3D; i++) {
  vortex_A3dSourceHw_Initialize(v, i % 4, i >> 2);
  a3dsrc_ZeroStateA3D(&v->a3d[0], v);
 }

 vortex_a3d_register_controls(v);
}
