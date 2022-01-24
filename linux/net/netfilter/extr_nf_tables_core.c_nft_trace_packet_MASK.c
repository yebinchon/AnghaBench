#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nft_traceinfo {struct nft_rule const* rule; } ;
struct nft_rule {int dummy; } ;
struct nft_chain {int dummy; } ;
typedef  enum nft_trace_types { ____Placeholder_nft_trace_types } nft_trace_types ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_traceinfo*,struct nft_chain const*,int) ; 
 int /*<<< orphan*/  nft_trace_enabled ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct nft_traceinfo *info,
				    const struct nft_chain *chain,
				    const struct nft_rule *rule,
				    enum nft_trace_types type)
{
	if (FUNC1(&nft_trace_enabled)) {
		info->rule = rule;
		FUNC0(info, chain, type);
	}
}