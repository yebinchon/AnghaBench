
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ret_handler; } ;
struct trace_uprobe {TYPE_1__ consumer; } ;



__attribute__((used)) static inline bool is_ret_probe(struct trace_uprobe *tu)
{
 return tu->consumer.ret_handler != ((void*)0);
}
