
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct runtime_sc {int ism2; int sm2; int dy; int dx; int ism1; int sm1; void* y; void* x; } ;
struct internal_sc {int ism2; int sm2; int dy; int dx; int ism1; int sm1; } ;



__attribute__((used)) static void
rtsc_init(struct runtime_sc *rtsc, struct internal_sc *isc, u64 x, u64 y)
{
 rtsc->x = x;
 rtsc->y = y;
 rtsc->sm1 = isc->sm1;
 rtsc->ism1 = isc->ism1;
 rtsc->dx = isc->dx;
 rtsc->dy = isc->dy;
 rtsc->sm2 = isc->sm2;
 rtsc->ism2 = isc->ism2;
}
