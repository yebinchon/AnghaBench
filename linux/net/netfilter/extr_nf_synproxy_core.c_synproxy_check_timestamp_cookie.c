
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synproxy_options {int wscale; int tsecr; int options; } ;


 int NF_SYNPROXY_OPT_ECN ;
 int NF_SYNPROXY_OPT_SACK_PERM ;
 int NF_SYNPROXY_OPT_WSCALE ;

__attribute__((used)) static void
synproxy_check_timestamp_cookie(struct synproxy_options *opts)
{
 opts->wscale = opts->tsecr & 0xf;
 if (opts->wscale != 0xf)
  opts->options |= NF_SYNPROXY_OPT_WSCALE;

 opts->options |= opts->tsecr & (1 << 4) ? NF_SYNPROXY_OPT_SACK_PERM : 0;

 opts->options |= opts->tsecr & (1 << 5) ? NF_SYNPROXY_OPT_ECN : 0;
}
