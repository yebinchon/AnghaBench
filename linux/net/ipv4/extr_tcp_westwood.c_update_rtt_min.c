
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct westwood {int rtt_min; int rtt; scalar_t__ reset_rtt_min; } ;


 int min (int ,int ) ;

__attribute__((used)) static inline void update_rtt_min(struct westwood *w)
{
 if (w->reset_rtt_min) {
  w->rtt_min = w->rtt;
  w->reset_rtt_min = 0;
 } else
  w->rtt_min = min(w->rtt, w->rtt_min);
}
