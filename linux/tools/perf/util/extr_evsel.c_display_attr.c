
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;


 int __open_attr__fprintf ;
 int fprintf (int ,char*,...) ;
 char* graph_dotted_line ;
 int perf_event_attr__fprintf (int ,struct perf_event_attr*,int ,int *) ;
 int stderr ;
 int verbose ;

__attribute__((used)) static void display_attr(struct perf_event_attr *attr)
{
 if (verbose >= 2) {
  fprintf(stderr, "%.60s\n", graph_dotted_line);
  fprintf(stderr, "perf_event_attr:\n");
  perf_event_attr__fprintf(stderr, attr, __open_attr__fprintf, ((void*)0));
  fprintf(stderr, "%.60s\n", graph_dotted_line);
 }
}
