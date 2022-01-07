
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {scalar_t__ cwr; scalar_t__ ece; } ;
struct synproxy_options {int options; int mss_option; int mss_encode; } ;
struct synproxy_net {TYPE_2__* stats; } ;
struct TYPE_3__ {int options; } ;
struct nft_synproxy {TYPE_1__ info; } ;
struct nf_synproxy_info {int mss; } ;
struct TYPE_4__ {int syn_received; } ;


 int NF_SYNPROXY_OPT_ECN ;
 int NF_SYNPROXY_OPT_SACK_PERM ;
 int NF_SYNPROXY_OPT_TIMESTAMP ;
 int NF_SYNPROXY_OPT_WSCALE ;
 int synproxy_init_timestamp_cookie (struct nf_synproxy_info*,struct synproxy_options*) ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static void nft_synproxy_tcp_options(struct synproxy_options *opts,
         const struct tcphdr *tcp,
         struct synproxy_net *snet,
         struct nf_synproxy_info *info,
         const struct nft_synproxy *priv)
{
 this_cpu_inc(snet->stats->syn_received);
 if (tcp->ece && tcp->cwr)
  opts->options |= NF_SYNPROXY_OPT_ECN;

 opts->options &= priv->info.options;
 opts->mss_encode = opts->mss_option;
 opts->mss_option = info->mss;
 if (opts->options & NF_SYNPROXY_OPT_TIMESTAMP)
  synproxy_init_timestamp_cookie(info, opts);
 else
  opts->options &= ~(NF_SYNPROXY_OPT_WSCALE |
       NF_SYNPROXY_OPT_SACK_PERM |
       NF_SYNPROXY_OPT_ECN);
}
