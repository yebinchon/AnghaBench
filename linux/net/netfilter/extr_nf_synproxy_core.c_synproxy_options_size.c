
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synproxy_options {int options; } ;


 int NF_SYNPROXY_OPT_MSS ;
 int NF_SYNPROXY_OPT_SACK_PERM ;
 int NF_SYNPROXY_OPT_TIMESTAMP ;
 int NF_SYNPROXY_OPT_WSCALE ;
 scalar_t__ TCPOLEN_MSS_ALIGNED ;
 scalar_t__ TCPOLEN_SACKPERM_ALIGNED ;
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ;
 scalar_t__ TCPOLEN_WSCALE_ALIGNED ;

__attribute__((used)) static unsigned int
synproxy_options_size(const struct synproxy_options *opts)
{
 unsigned int size = 0;

 if (opts->options & NF_SYNPROXY_OPT_MSS)
  size += TCPOLEN_MSS_ALIGNED;
 if (opts->options & NF_SYNPROXY_OPT_TIMESTAMP)
  size += TCPOLEN_TSTAMP_ALIGNED;
 else if (opts->options & NF_SYNPROXY_OPT_SACK_PERM)
  size += TCPOLEN_SACKPERM_ALIGNED;
 if (opts->options & NF_SYNPROXY_OPT_WSCALE)
  size += TCPOLEN_WSCALE_ALIGNED;

 return size;
}
