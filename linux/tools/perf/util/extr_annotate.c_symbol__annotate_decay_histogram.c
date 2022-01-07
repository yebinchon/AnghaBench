
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct sym_hist {TYPE_1__* addr; scalar_t__ nr_samples; } ;
struct annotation {int dummy; } ;
struct TYPE_2__ {int nr_samples; } ;


 struct sym_hist* annotation__histogram (struct annotation*,int) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int symbol__size (struct symbol*) ;

void symbol__annotate_decay_histogram(struct symbol *sym, int evidx)
{
 struct annotation *notes = symbol__annotation(sym);
 struct sym_hist *h = annotation__histogram(notes, evidx);
 int len = symbol__size(sym), offset;

 h->nr_samples = 0;
 for (offset = 0; offset < len; ++offset) {
  h->addr[offset].nr_samples = h->addr[offset].nr_samples * 7 / 8;
  h->nr_samples += h->addr[offset].nr_samples;
 }
}
