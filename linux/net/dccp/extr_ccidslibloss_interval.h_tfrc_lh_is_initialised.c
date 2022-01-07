
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tfrc_loss_hist {scalar_t__ counter; } ;



__attribute__((used)) static inline u8 tfrc_lh_is_initialised(struct tfrc_loss_hist *lh)
{
 return lh->counter > 0;
}
