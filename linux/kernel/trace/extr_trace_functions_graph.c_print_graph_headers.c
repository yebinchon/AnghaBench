
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int val; } ;


 int print_graph_headers_flags (struct seq_file*,int ) ;
 TYPE_1__ tracer_flags ;

__attribute__((used)) static void print_graph_headers(struct seq_file *s)
{
 print_graph_headers_flags(s, tracer_flags.val);
}
