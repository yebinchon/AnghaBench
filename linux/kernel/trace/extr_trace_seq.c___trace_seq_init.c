
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct trace_seq {TYPE_1__ seq; } ;


 int trace_seq_init (struct trace_seq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void __trace_seq_init(struct trace_seq *s)
{
 if (unlikely(!s->seq.size))
  trace_seq_init(s);
}
