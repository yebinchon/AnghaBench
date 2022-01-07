
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyc_hist {int num_aggr; int cycles_aggr; int cycles_min; int cycles_max; int start; scalar_t__ have_start; scalar_t__ cycles; } ;
struct annotation_line {int cycles; int cycles_min; int cycles_max; } ;
struct annotation {int have_cycles; int lock; struct annotation_line** offsets; TYPE_1__* src; scalar_t__ cover_insn; scalar_t__ hit_insn; scalar_t__ hit_cycles; int total_insn; } ;
typedef size_t s64 ;
struct TYPE_2__ {struct cyc_hist* cycles_hist; } ;


 int annotation__count_and_fill (struct annotation*,int ,size_t,struct cyc_hist*) ;
 int annotation__count_insn (struct annotation*,int ,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void annotation__compute_ipc(struct annotation *notes, size_t size)
{
 s64 offset;

 if (!notes->src || !notes->src->cycles_hist)
  return;

 notes->total_insn = annotation__count_insn(notes, 0, size - 1);
 notes->hit_cycles = 0;
 notes->hit_insn = 0;
 notes->cover_insn = 0;

 pthread_mutex_lock(&notes->lock);
 for (offset = size - 1; offset >= 0; --offset) {
  struct cyc_hist *ch;

  ch = &notes->src->cycles_hist[offset];
  if (ch && ch->cycles) {
   struct annotation_line *al;

   if (ch->have_start)
    annotation__count_and_fill(notes, ch->start, offset, ch);
   al = notes->offsets[offset];
   if (al && ch->num_aggr) {
    al->cycles = ch->cycles_aggr / ch->num_aggr;
    al->cycles_max = ch->cycles_max;
    al->cycles_min = ch->cycles_min;
   }
   notes->have_cycles = 1;
  }
 }
 pthread_mutex_unlock(&notes->lock);
}
