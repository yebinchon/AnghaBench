
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_progress {int dummy; } ;
struct hists {int dummy; } ;
struct TYPE_2__ {int use_callchain; } ;


 int output_resort (struct hists*,struct ui_progress*,int ,int *,int *) ;
 TYPE_1__ symbol_conf ;

void hists__output_resort(struct hists *hists, struct ui_progress *prog)
{
 output_resort(hists, prog, symbol_conf.use_callchain, ((void*)0), ((void*)0));
}
