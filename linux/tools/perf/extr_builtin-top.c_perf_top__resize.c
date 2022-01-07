
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_top {int winsize; } ;


 int get_term_dimensions (int *) ;
 int perf_top__update_print_entries (struct perf_top*) ;

__attribute__((used)) static void perf_top__resize(struct perf_top *top)
{
 get_term_dimensions(&top->winsize);
 perf_top__update_print_entries(top);
}
