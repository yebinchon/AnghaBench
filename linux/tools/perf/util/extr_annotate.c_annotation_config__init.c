
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int show_nr_samples; int show_total_period; } ;
struct TYPE_3__ {int show_nr_samples; int show_total_period; } ;


 int annotation__config ;
 TYPE_2__ annotation__default_options ;
 int perf_config (int ,int *) ;
 TYPE_1__ symbol_conf ;

void annotation_config__init(void)
{
 perf_config(annotation__config, ((void*)0));

 annotation__default_options.show_total_period = symbol_conf.show_total_period;
 annotation__default_options.show_nr_samples = symbol_conf.show_nr_samples;
}
