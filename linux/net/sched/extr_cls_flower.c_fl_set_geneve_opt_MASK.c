#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct geneve_opt {int length; int /*<<< orphan*/  type; int /*<<< orphan*/  opt_class; int /*<<< orphan*/  opt_data; scalar_t__ r3; scalar_t__ r2; scalar_t__ r1; } ;
struct TYPE_2__ {size_t len; int /*<<< orphan*/ * data; } ;
struct fl_flow_key {TYPE_1__ enc_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ERANGE ; 
 int FLOW_DIS_TUN_OPTS_MAX ; 
 int IP_TUNNEL_OPTS_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ TCA_FLOWER_KEY_ENC_OPTS_GENEVE ; 
 size_t TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS ; 
 size_t TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX ; 
 size_t TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE ; 
 int /*<<< orphan*/  geneve_opt_policy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct geneve_opt*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC9 (struct nlattr const*) ; 

__attribute__((used)) static int FUNC10(const struct nlattr *nla, struct fl_flow_key *key,
			     int depth, int option_len,
			     struct netlink_ext_ack *extack)
{
	struct nlattr *tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX + 1];
	struct nlattr *class = NULL, *type = NULL, *data = NULL;
	struct geneve_opt *opt;
	int err, data_len = 0;

	if (option_len > sizeof(struct geneve_opt))
		data_len = option_len - sizeof(struct geneve_opt);

	opt = (struct geneve_opt *)&key->enc_opts.data[key->enc_opts.len];
	FUNC3(opt, 0xff, option_len);
	opt->length = data_len / 4;
	opt->r1 = 0;
	opt->r2 = 0;
	opt->r3 = 0;

	/* If no mask has been prodived we assume an exact match. */
	if (!depth)
		return sizeof(struct geneve_opt) + data_len;

	if (FUNC9(nla) != TCA_FLOWER_KEY_ENC_OPTS_GENEVE) {
		FUNC1(extack, "Non-geneve option type for mask");
		return -EINVAL;
	}

	err = FUNC8(tb,
					  TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX,
					  nla, geneve_opt_policy, extack);
	if (err < 0)
		return err;

	/* We are not allowed to omit any of CLASS, TYPE or DATA
	 * fields from the key.
	 */
	if (!option_len &&
	    (!tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS] ||
	     !tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE] ||
	     !tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA])) {
		FUNC1(extack, "Missing tunnel key geneve option class, type or data");
		return -EINVAL;
	}

	/* Omitting any of CLASS, TYPE or DATA fields is allowed
	 * for the mask.
	 */
	if (tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA]) {
		int new_len = key->enc_opts.len;

		data = tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA];
		data_len = FUNC7(data);
		if (data_len < 4) {
			FUNC1(extack, "Tunnel key geneve option data is less than 4 bytes long");
			return -ERANGE;
		}
		if (data_len % 4) {
			FUNC1(extack, "Tunnel key geneve option data is not a multiple of 4 bytes long");
			return -ERANGE;
		}

		new_len += sizeof(struct geneve_opt) + data_len;
		FUNC0(FLOW_DIS_TUN_OPTS_MAX != IP_TUNNEL_OPTS_MAX);
		if (new_len > FLOW_DIS_TUN_OPTS_MAX) {
			FUNC1(extack, "Tunnel options exceeds max size");
			return -ERANGE;
		}
		opt->length = data_len / 4;
		FUNC2(opt->opt_data, FUNC4(data), data_len);
	}

	if (tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS]) {
		class = tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS];
		opt->opt_class = FUNC5(class);
	}

	if (tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE]) {
		type = tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE];
		opt->type = FUNC6(type);
	}

	return sizeof(struct geneve_opt) + data_len;
}