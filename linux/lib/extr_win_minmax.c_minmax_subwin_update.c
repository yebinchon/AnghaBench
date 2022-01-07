
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct minmax_sample {int t; int v; } ;
struct minmax {struct minmax_sample* s; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 minmax_subwin_update(struct minmax *m, u32 win,
    const struct minmax_sample *val)
{
 u32 dt = val->t - m->s[0].t;

 if (unlikely(dt > win)) {







  m->s[0] = m->s[1];
  m->s[1] = m->s[2];
  m->s[2] = *val;
  if (unlikely(val->t - m->s[0].t > win)) {
   m->s[0] = m->s[1];
   m->s[1] = m->s[2];
   m->s[2] = *val;
  }
 } else if (unlikely(m->s[1].t == m->s[0].t) && dt > win/4) {




  m->s[2] = m->s[1] = *val;
 } else if (unlikely(m->s[2].t == m->s[1].t) && dt > win/2) {




  m->s[2] = *val;
 }
 return m->s[0].v;
}
