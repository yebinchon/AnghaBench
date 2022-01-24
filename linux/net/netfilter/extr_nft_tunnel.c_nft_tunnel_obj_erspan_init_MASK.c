#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nlattr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dir; } ;
struct TYPE_5__ {TYPE_4__ md2; int /*<<< orphan*/  index; } ;
struct TYPE_6__ {int version; TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ erspan; } ;
struct nft_tunnel_opts {int len; int /*<<< orphan*/  flags; TYPE_3__ u; } ;
struct erspan_metadata {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  ERSPAN_VERSION 129 
#define  ERSPAN_VERSION2 128 
 int /*<<< orphan*/  NFTA_TUNNEL_KEY_ERSPAN_MAX ; 
 size_t NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX ; 
 size_t NFTA_TUNNEL_KEY_ERSPAN_V2_DIR ; 
 size_t NFTA_TUNNEL_KEY_ERSPAN_V2_HWID ; 
 size_t NFTA_TUNNEL_KEY_ERSPAN_VERSION ; 
 int /*<<< orphan*/  TUNNEL_ERSPAN_OPT ; 
 int /*<<< orphan*/  nft_tunnel_opts_erspan_policy ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nlattr *attr,
				      struct nft_tunnel_opts *opts)
{
	struct nlattr *tb[NFTA_TUNNEL_KEY_ERSPAN_MAX + 1];
	uint8_t hwid, dir;
	int err, version;

	err = FUNC2(tb, NFTA_TUNNEL_KEY_ERSPAN_MAX,
					  attr, nft_tunnel_opts_erspan_policy,
					  NULL);
	if (err < 0)
		return err;

	version = FUNC3(FUNC0(tb[NFTA_TUNNEL_KEY_ERSPAN_VERSION]));
	switch (version) {
	case ERSPAN_VERSION:
		if (!tb[NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX])
			return -EINVAL;

		opts->u.erspan.u.index =
			FUNC0(tb[NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX]);
		break;
	case ERSPAN_VERSION2:
		if (!tb[NFTA_TUNNEL_KEY_ERSPAN_V2_DIR] ||
		    !tb[NFTA_TUNNEL_KEY_ERSPAN_V2_HWID])
			return -EINVAL;

		hwid = FUNC1(tb[NFTA_TUNNEL_KEY_ERSPAN_V2_HWID]);
		dir = FUNC1(tb[NFTA_TUNNEL_KEY_ERSPAN_V2_DIR]);

		FUNC4(&opts->u.erspan.u.md2, hwid);
		opts->u.erspan.u.md2.dir = dir;
		break;
	default:
		return -EOPNOTSUPP;
	}
	opts->u.erspan.version = version;

	opts->len	= sizeof(struct erspan_metadata);
	opts->flags	= TUNNEL_ERSPAN_OPT;

	return 0;
}