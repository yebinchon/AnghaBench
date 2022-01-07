
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int vortex_Eqlzr_shutdown (int *) ;

__attribute__((used)) static int vortex_eq_free(vortex_t * vortex)
{
 vortex_Eqlzr_shutdown(vortex);
 return 0;
}
