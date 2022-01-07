
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwp_window; int hwp_desired; int hwp_epp; int hwp_max; int hwp_min; } ;


 int force ;
 scalar_t__ has_epb ;
 int new_epb ;
 int parse_cmdline_epb (int ) ;
 int parse_cmdline_hwp_desired (int ) ;
 int parse_cmdline_hwp_epp (int ) ;
 int parse_cmdline_hwp_max (int ) ;
 int parse_cmdline_hwp_min (int ) ;
 int parse_cmdline_hwp_window (int ) ;
 int parse_cmdline_turbo (int ) ;
 int parse_optarg_string (char*) ;
 TYPE_1__ req_update ;
 int turbo_update_value ;
 int update_hwp_enable ;

void parse_cmdline_all(char *s)
{
 force++;
 update_hwp_enable = 1;
 req_update.hwp_min = parse_cmdline_hwp_min(parse_optarg_string(s));
 req_update.hwp_max = parse_cmdline_hwp_max(parse_optarg_string(s));
 req_update.hwp_epp = parse_cmdline_hwp_epp(parse_optarg_string(s));
 if (has_epb)
  new_epb = parse_cmdline_epb(parse_optarg_string(s));
 turbo_update_value = parse_cmdline_turbo(parse_optarg_string(s));
 req_update.hwp_desired = parse_cmdline_hwp_desired(parse_optarg_string(s));
 req_update.hwp_window = parse_cmdline_hwp_window(parse_optarg_string(s));
}
