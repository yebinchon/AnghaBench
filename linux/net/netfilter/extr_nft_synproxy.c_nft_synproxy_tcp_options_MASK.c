#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ cwr; scalar_t__ ece; } ;
struct synproxy_options {int options; int /*<<< orphan*/  mss_option; int /*<<< orphan*/  mss_encode; } ;
struct synproxy_net {TYPE_2__* stats; } ;
struct TYPE_3__ {int options; } ;
struct nft_synproxy {TYPE_1__ info; } ;
struct nf_synproxy_info {int /*<<< orphan*/  mss; } ;
struct TYPE_4__ {int /*<<< orphan*/  syn_received; } ;

/* Variables and functions */
 int NF_SYNPROXY_OPT_ECN ; 
 int NF_SYNPROXY_OPT_SACK_PERM ; 
 int NF_SYNPROXY_OPT_TIMESTAMP ; 
 int NF_SYNPROXY_OPT_WSCALE ; 
 int /*<<< orphan*/  FUNC0 (struct nf_synproxy_info*,struct synproxy_options*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct synproxy_options *opts,
				     const struct tcphdr *tcp,
				     struct synproxy_net *snet,
				     struct nf_synproxy_info *info,
				     const struct nft_synproxy *priv)
{
	FUNC1(snet->stats->syn_received);
	if (tcp->ece && tcp->cwr)
		opts->options |= NF_SYNPROXY_OPT_ECN;

	opts->options &= priv->info.options;
	opts->mss_encode = opts->mss_option;
	opts->mss_option = info->mss;
	if (opts->options & NF_SYNPROXY_OPT_TIMESTAMP)
		FUNC0(info, opts);
	else
		opts->options &= ~(NF_SYNPROXY_OPT_WSCALE |
				   NF_SYNPROXY_OPT_SACK_PERM |
				   NF_SYNPROXY_OPT_ECN);
}