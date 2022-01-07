
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_loss_interval {int dummy; } ;
struct tfrc_loss_hist {scalar_t__ counter; struct tfrc_loss_interval** ring; } ;


 size_t LIH_INDEX (scalar_t__) ;

__attribute__((used)) static inline struct tfrc_loss_interval *tfrc_lh_peek(struct tfrc_loss_hist *lh)
{
 return lh->counter ? lh->ring[LIH_INDEX(lh->counter - 1)] : ((void*)0);
}
