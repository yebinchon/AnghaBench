
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ktime_t ;
typedef enum tk_offsets { ____Placeholder_tk_offsets } tk_offsets ;
struct TYPE_2__ {int seq; } ;


 int ktime_add (int ,int ) ;
 int ** offsets ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 TYPE_1__ tk_core ;

ktime_t ktime_mono_to_any(ktime_t tmono, enum tk_offsets offs)
{
 ktime_t *offset = offsets[offs];
 unsigned int seq;
 ktime_t tconv;

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  tconv = ktime_add(tmono, *offset);
 } while (read_seqcount_retry(&tk_core.seq, seq));

 return tconv;
}
