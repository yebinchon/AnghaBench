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
struct seg6_lwt {int /*<<< orphan*/  tuninfo; int /*<<< orphan*/  cache; } ;
struct seg6_iptunnel_encap {int mode; int /*<<< orphan*/  srh; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int /*<<< orphan*/  headroom; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 unsigned int AF_INET ; 
 unsigned int AF_INET6 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LWTUNNEL_ENCAP_SEG6 ; 
 int /*<<< orphan*/  LWTUNNEL_STATE_INPUT_REDIRECT ; 
 int /*<<< orphan*/  LWTUNNEL_STATE_OUTPUT_REDIRECT ; 
 int /*<<< orphan*/  SEG6_IPTUNNEL_MAX ; 
 size_t SEG6_IPTUNNEL_SRH ; 
#define  SEG6_IPTUN_MODE_ENCAP 130 
#define  SEG6_IPTUN_MODE_INLINE 129 
#define  SEG6_IPTUN_MODE_L2ENCAP 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lwtunnel_state*) ; 
 struct lwtunnel_state* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct seg6_iptunnel_encap*,int) ; 
 struct seg6_iptunnel_encap* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  seg6_iptunnel_policy ; 
 int /*<<< orphan*/  FUNC7 (struct seg6_iptunnel_encap*) ; 
 struct seg6_lwt* FUNC8 (struct lwtunnel_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct nlattr *nla,
			    unsigned int family, const void *cfg,
			    struct lwtunnel_state **ts,
			    struct netlink_ext_ack *extack)
{
	struct nlattr *tb[SEG6_IPTUNNEL_MAX + 1];
	struct seg6_iptunnel_encap *tuninfo;
	struct lwtunnel_state *newts;
	int tuninfo_len, min_size;
	struct seg6_lwt *slwt;
	int err;

	if (family != AF_INET && family != AF_INET6)
		return -EINVAL;

	err = FUNC6(tb, SEG6_IPTUNNEL_MAX, nla,
					  seg6_iptunnel_policy, extack);

	if (err < 0)
		return err;

	if (!tb[SEG6_IPTUNNEL_SRH])
		return -EINVAL;

	tuninfo = FUNC4(tb[SEG6_IPTUNNEL_SRH]);
	tuninfo_len = FUNC5(tb[SEG6_IPTUNNEL_SRH]);

	/* tuninfo must contain at least the iptunnel encap structure,
	 * the SRH and one segment
	 */
	min_size = sizeof(*tuninfo) + sizeof(struct ipv6_sr_hdr) +
		   sizeof(struct in6_addr);
	if (tuninfo_len < min_size)
		return -EINVAL;

	switch (tuninfo->mode) {
	case SEG6_IPTUN_MODE_INLINE:
		if (family != AF_INET6)
			return -EINVAL;

		break;
	case SEG6_IPTUN_MODE_ENCAP:
		break;
	case SEG6_IPTUN_MODE_L2ENCAP:
		break;
	default:
		return -EINVAL;
	}

	/* verify that SRH is consistent */
	if (!FUNC9(tuninfo->srh, tuninfo_len - sizeof(*tuninfo)))
		return -EINVAL;

	newts = FUNC2(tuninfo_len + sizeof(*slwt));
	if (!newts)
		return -ENOMEM;

	slwt = FUNC8(newts);

	err = FUNC0(&slwt->cache, GFP_ATOMIC);
	if (err) {
		FUNC1(newts);
		return err;
	}

	FUNC3(&slwt->tuninfo, tuninfo, tuninfo_len);

	newts->type = LWTUNNEL_ENCAP_SEG6;
	newts->flags |= LWTUNNEL_STATE_INPUT_REDIRECT;

	if (tuninfo->mode != SEG6_IPTUN_MODE_L2ENCAP)
		newts->flags |= LWTUNNEL_STATE_OUTPUT_REDIRECT;

	newts->headroom = FUNC7(tuninfo);

	*ts = newts;

	return 0;
}