
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
struct bcm_op {scalar_t__ kt_ival2; scalar_t__ kt_ival1; scalar_t__ count; } ;
typedef scalar_t__ ktime_t ;


 int hrtimer_set_expires (struct hrtimer*,int ) ;
 int ktime_add (int ,scalar_t__) ;
 int ktime_get () ;

__attribute__((used)) static bool bcm_tx_set_expiry(struct bcm_op *op, struct hrtimer *hrt)
{
 ktime_t ival;

 if (op->kt_ival1 && op->count)
  ival = op->kt_ival1;
 else if (op->kt_ival2)
  ival = op->kt_ival2;
 else
  return 0;

 hrtimer_set_expires(hrt, ktime_add(ktime_get(), ival));
 return 1;
}
