
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hists {int dummy; } ;
struct TYPE_2__ {int report_block; int use_callchain; } ;


 scalar_t__ COMPUTE_CYCLES ;
 scalar_t__ compute ;
 int hists__baseline_only (struct hists*) ;
 int hists__fprintf (struct hists*,int,int ,int ,int ,int ,int) ;
 int hists__output_resort (struct hists*,int *) ;
 int hists__precompute (struct hists*) ;
 int quiet ;
 scalar_t__ show_baseline_only ;
 int stdout ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static void hists__process(struct hists *hists)
{
 if (show_baseline_only)
  hists__baseline_only(hists);

 hists__precompute(hists);
 hists__output_resort(hists, ((void*)0));

 if (compute == COMPUTE_CYCLES)
  symbol_conf.report_block = 1;

 hists__fprintf(hists, !quiet, 0, 0, 0, stdout,
         !symbol_conf.use_callchain);
}
