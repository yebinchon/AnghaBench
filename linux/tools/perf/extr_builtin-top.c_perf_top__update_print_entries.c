
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ws_row; } ;
struct perf_top {TYPE_1__ winsize; scalar_t__ print_entries; } ;


 scalar_t__ HEADER_LINE_NR ;

__attribute__((used)) static void perf_top__update_print_entries(struct perf_top *top)
{
 top->print_entries = top->winsize.ws_row - HEADER_LINE_NR;
}
