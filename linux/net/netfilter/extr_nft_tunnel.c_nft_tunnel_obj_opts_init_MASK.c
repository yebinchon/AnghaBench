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
struct nlattr {int dummy; } ;
struct nft_tunnel_opts {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 size_t NFTA_TUNNEL_KEY_OPTS_ERSPAN ; 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_OPTS_MAX ; 
 size_t NFTA_TUNNEL_KEY_OPTS_VXLAN ; 
 int FUNC0 (struct nlattr*,struct nft_tunnel_opts*) ; 
 int FUNC1 (struct nlattr*,struct nft_tunnel_opts*) ; 
 int /*<<< orphan*/  nft_tunnel_opts_policy ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const struct nft_ctx *ctx,
				    const struct nlattr *attr,
				    struct ip_tunnel_info *info,
				    struct nft_tunnel_opts *opts)
{
	struct nlattr *tb[NFTA_TUNNEL_KEY_OPTS_MAX + 1];
	int err;

	err = FUNC2(tb, NFTA_TUNNEL_KEY_OPTS_MAX, attr,
					  nft_tunnel_opts_policy, NULL);
	if (err < 0)
		return err;

	if (tb[NFTA_TUNNEL_KEY_OPTS_VXLAN]) {
		err = FUNC1(tb[NFTA_TUNNEL_KEY_OPTS_VXLAN],
						opts);
	} else if (tb[NFTA_TUNNEL_KEY_OPTS_ERSPAN]) {
		err = FUNC0(tb[NFTA_TUNNEL_KEY_OPTS_ERSPAN],
						 opts);
	} else {
		return -EOPNOTSUPP;
	}

	return err;
}