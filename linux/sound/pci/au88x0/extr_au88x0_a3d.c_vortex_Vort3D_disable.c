
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int vortex_XtalkHw_Disable (int *) ;
 int vortex_a3d_unregister_controls (int *) ;

__attribute__((used)) static void vortex_Vort3D_disable(vortex_t * v)
{
 vortex_XtalkHw_Disable(v);
 vortex_a3d_unregister_controls(v);
}
