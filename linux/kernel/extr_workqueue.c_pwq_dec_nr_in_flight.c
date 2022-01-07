
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pool_workqueue {scalar_t__ nr_active; scalar_t__ max_active; int flush_color; TYPE_2__* wq; scalar_t__* nr_in_flight; int delayed_works; } ;
struct TYPE_4__ {TYPE_1__* first_flusher; int nr_pwqs_to_flush; } ;
struct TYPE_3__ {int done; } ;


 int WORK_NO_COLOR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int put_pwq (struct pool_workqueue*) ;
 int pwq_activate_first_delayed (struct pool_workqueue*) ;

__attribute__((used)) static void pwq_dec_nr_in_flight(struct pool_workqueue *pwq, int color)
{

 if (color == WORK_NO_COLOR)
  goto out_put;

 pwq->nr_in_flight[color]--;

 pwq->nr_active--;
 if (!list_empty(&pwq->delayed_works)) {

  if (pwq->nr_active < pwq->max_active)
   pwq_activate_first_delayed(pwq);
 }


 if (likely(pwq->flush_color != color))
  goto out_put;


 if (pwq->nr_in_flight[color])
  goto out_put;


 pwq->flush_color = -1;





 if (atomic_dec_and_test(&pwq->wq->nr_pwqs_to_flush))
  complete(&pwq->wq->first_flusher->done);
out_put:
 put_pwq(pwq);
}
