
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {scalar_t__ dy; scalar_t__ dx; } ;
struct TYPE_5__ {scalar_t__ sm1; scalar_t__ sm2; } ;
struct hfsc_class {scalar_t__ cl_cumul; TYPE_1__ cl_deadline; void* cl_d; TYPE_1__ cl_eligible; void* cl_e; TYPE_3__ cl_rsc; } ;


 int eltree_insert (struct hfsc_class*) ;
 int psched_get_time () ;
 int rtsc_min (TYPE_1__*,TYPE_3__*,int ,scalar_t__) ;
 void* rtsc_y2x (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
init_ed(struct hfsc_class *cl, unsigned int next_len)
{
 u64 cur_time = psched_get_time();


 rtsc_min(&cl->cl_deadline, &cl->cl_rsc, cur_time, cl->cl_cumul);






 cl->cl_eligible = cl->cl_deadline;
 if (cl->cl_rsc.sm1 <= cl->cl_rsc.sm2) {
  cl->cl_eligible.dx = 0;
  cl->cl_eligible.dy = 0;
 }


 cl->cl_e = rtsc_y2x(&cl->cl_eligible, cl->cl_cumul);
 cl->cl_d = rtsc_y2x(&cl->cl_deadline, cl->cl_cumul + next_len);

 eltree_insert(cl);
}
