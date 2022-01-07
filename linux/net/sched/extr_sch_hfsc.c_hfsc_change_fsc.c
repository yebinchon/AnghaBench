
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_service_curve {int dummy; } ;
struct hfsc_class {int cl_flags; int cl_total; int cl_vt; int cl_fsc; int cl_virtual; } ;


 int HFSC_FSC ;
 int rtsc_init (int *,int *,int ,int ) ;
 int sc2isc (struct tc_service_curve*,int *) ;

__attribute__((used)) static void
hfsc_change_fsc(struct hfsc_class *cl, struct tc_service_curve *fsc)
{
 sc2isc(fsc, &cl->cl_fsc);
 rtsc_init(&cl->cl_virtual, &cl->cl_fsc, cl->cl_vt, cl->cl_total);
 cl->cl_flags |= HFSC_FSC;
}
