
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {scalar_t__ cl_cumul; int cl_deadline; int cl_d; } ;


 int rtsc_y2x (int *,scalar_t__) ;

__attribute__((used)) static inline void
update_d(struct hfsc_class *cl, unsigned int next_len)
{
 cl->cl_d = rtsc_y2x(&cl->cl_deadline, cl->cl_cumul + next_len);
}
