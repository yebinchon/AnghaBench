#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* from; char const* to; } ;
typedef  TYPE_1__ substring_t ;
struct ceph_options {int /*<<< orphan*/  flags; void* osd_request_timeout; void* mount_timeout; void* osd_idle_ttl; void* osd_keepalive_timeout; void* key; void* name; int /*<<< orphan*/  fsid; int /*<<< orphan*/  my_addr; int /*<<< orphan*/  num_mon; int /*<<< orphan*/ * mon_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CEPH_MAX_MON ; 
 void* CEPH_MOUNT_TIMEOUT_DEFAULT ; 
 int /*<<< orphan*/  CEPH_OPT_ABORT_ON_FULL ; 
 int /*<<< orphan*/  CEPH_OPT_DEFAULT ; 
 int /*<<< orphan*/  CEPH_OPT_FSID ; 
 int /*<<< orphan*/  CEPH_OPT_MYIP ; 
 int /*<<< orphan*/  CEPH_OPT_NOCRC ; 
 int /*<<< orphan*/  CEPH_OPT_NOMSGAUTH ; 
 int /*<<< orphan*/  CEPH_OPT_NOMSGSIGN ; 
 int /*<<< orphan*/  CEPH_OPT_NOSHARE ; 
 int /*<<< orphan*/  CEPH_OPT_TCP_NODELAY ; 
 void* CEPH_OSD_IDLE_TTL_DEFAULT ; 
 void* CEPH_OSD_KEEPALIVE_DEFAULT ; 
 void* CEPH_OSD_REQUEST_TIMEOUT_DEFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ceph_options* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 int MAX_OPT_ARGS ; 
#define  Opt_abort_on_full 148 
#define  Opt_cephx_require_signatures 147 
#define  Opt_cephx_sign_messages 146 
#define  Opt_crc 145 
#define  Opt_fsid 144 
#define  Opt_ip 143 
#define  Opt_key 142 
 int Opt_last_int ; 
 int Opt_last_string ; 
#define  Opt_mount_timeout 141 
#define  Opt_name 140 
#define  Opt_nocephx_require_signatures 139 
#define  Opt_nocephx_sign_messages 138 
#define  Opt_nocrc 137 
#define  Opt_noshare 136 
#define  Opt_notcp_nodelay 135 
#define  Opt_osd_idle_ttl 134 
#define  Opt_osd_request_timeout 133 
#define  Opt_osdkeepalivetimeout 132 
#define  Opt_osdtimeout 131 
#define  Opt_secret 130 
#define  Opt_share 129 
#define  Opt_tcp_nodelay 128 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_options*) ; 
 int FUNC5 (char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (void*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (char const*,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,int*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  opt_tokens ; 
 int FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* FUNC18 (char**,char*) ; 

struct ceph_options *
FUNC19(char *options, const char *dev_name,
			const char *dev_name_end,
			int (*parse_extra_token)(char *c, void *private),
			void *private)
{
	struct ceph_options *opt;
	const char *c;
	int err = -ENOMEM;
	substring_t argstr[MAX_OPT_ARGS];

	opt = FUNC11(sizeof(*opt), GFP_KERNEL);
	if (!opt)
		return FUNC1(-ENOMEM);
	opt->mon_addr = FUNC8(CEPH_MAX_MON, sizeof(*opt->mon_addr),
				GFP_KERNEL);
	if (!opt->mon_addr)
		goto out;

	FUNC6("parse_options %p options '%s' dev_name '%s'\n", opt, options,
	     dev_name);

	/* start with defaults */
	opt->flags = CEPH_OPT_DEFAULT;
	opt->osd_keepalive_timeout = CEPH_OSD_KEEPALIVE_DEFAULT;
	opt->mount_timeout = CEPH_MOUNT_TIMEOUT_DEFAULT;
	opt->osd_idle_ttl = CEPH_OSD_IDLE_TTL_DEFAULT;
	opt->osd_request_timeout = CEPH_OSD_REQUEST_TIMEOUT_DEFAULT;

	/* get mon ip(s) */
	/* ip1[:port1][,ip2[:port2]...] */
	err = FUNC5(dev_name, dev_name_end, opt->mon_addr,
			     CEPH_MAX_MON, &opt->num_mon);
	if (err < 0)
		goto out;

	/* parse mount options */
	while ((c = FUNC18(&options, ",")) != NULL) {
		int token, intval;
		if (!*c)
			continue;
		err = -EINVAL;
		token = FUNC13((char *)c, opt_tokens, argstr);
		if (token < 0 && parse_extra_token) {
			/* extra? */
			err = parse_extra_token((char *)c, private);
			if (err < 0) {
				FUNC16("bad option at '%s'\n", c);
				goto out;
			}
			continue;
		}
		if (token < Opt_last_int) {
			err = FUNC12(&argstr[0], &intval);
			if (err < 0) {
				FUNC16("bad option arg (not int) at '%s'\n", c);
				goto out;
			}
			FUNC6("got int token %d val %d\n", token, intval);
		} else if (token > Opt_last_int && token < Opt_last_string) {
			FUNC6("got string token %d val %s\n", token,
			     argstr[0].from);
		} else {
			FUNC6("got token %d\n", token);
		}
		switch (token) {
		case Opt_ip:
			err = FUNC5(argstr[0].from,
					     argstr[0].to,
					     &opt->my_addr,
					     1, NULL);
			if (err < 0)
				goto out;
			opt->flags |= CEPH_OPT_MYIP;
			break;

		case Opt_fsid:
			err = FUNC15(argstr[0].from, &opt->fsid);
			if (err == 0)
				opt->flags |= CEPH_OPT_FSID;
			break;
		case Opt_name:
			FUNC9(opt->name);
			opt->name = FUNC10(argstr[0].from,
					      argstr[0].to-argstr[0].from,
					      GFP_KERNEL);
			if (!opt->name) {
				err = -ENOMEM;
				goto out;
			}
			break;
		case Opt_secret:
			FUNC2(opt->key);
			FUNC9(opt->key);

		        opt->key = FUNC11(sizeof(*opt->key), GFP_KERNEL);
			if (!opt->key) {
				err = -ENOMEM;
				goto out;
			}
			err = FUNC3(opt->key, argstr[0].from);
			if (err < 0)
				goto out;
			break;
		case Opt_key:
			FUNC2(opt->key);
			FUNC9(opt->key);

		        opt->key = FUNC11(sizeof(*opt->key), GFP_KERNEL);
			if (!opt->key) {
				err = -ENOMEM;
				goto out;
			}
			err = FUNC7(opt->key, argstr[0].from);
			if (err < 0)
				goto out;
			break;

			/* misc */
		case Opt_osdtimeout:
			FUNC17("ignoring deprecated osdtimeout option\n");
			break;
		case Opt_osdkeepalivetimeout:
			/* 0 isn't well defined right now, reject it */
			if (intval < 1 || intval > INT_MAX / 1000) {
				FUNC16("osdkeepalive out of range\n");
				err = -EINVAL;
				goto out;
			}
			opt->osd_keepalive_timeout =
					FUNC14(intval * 1000);
			break;
		case Opt_osd_idle_ttl:
			/* 0 isn't well defined right now, reject it */
			if (intval < 1 || intval > INT_MAX / 1000) {
				FUNC16("osd_idle_ttl out of range\n");
				err = -EINVAL;
				goto out;
			}
			opt->osd_idle_ttl = FUNC14(intval * 1000);
			break;
		case Opt_mount_timeout:
			/* 0 is "wait forever" (i.e. infinite timeout) */
			if (intval < 0 || intval > INT_MAX / 1000) {
				FUNC16("mount_timeout out of range\n");
				err = -EINVAL;
				goto out;
			}
			opt->mount_timeout = FUNC14(intval * 1000);
			break;
		case Opt_osd_request_timeout:
			/* 0 is "wait forever" (i.e. infinite timeout) */
			if (intval < 0 || intval > INT_MAX / 1000) {
				FUNC16("osd_request_timeout out of range\n");
				err = -EINVAL;
				goto out;
			}
			opt->osd_request_timeout = FUNC14(intval * 1000);
			break;

		case Opt_share:
			opt->flags &= ~CEPH_OPT_NOSHARE;
			break;
		case Opt_noshare:
			opt->flags |= CEPH_OPT_NOSHARE;
			break;

		case Opt_crc:
			opt->flags &= ~CEPH_OPT_NOCRC;
			break;
		case Opt_nocrc:
			opt->flags |= CEPH_OPT_NOCRC;
			break;

		case Opt_cephx_require_signatures:
			opt->flags &= ~CEPH_OPT_NOMSGAUTH;
			break;
		case Opt_nocephx_require_signatures:
			opt->flags |= CEPH_OPT_NOMSGAUTH;
			break;
		case Opt_cephx_sign_messages:
			opt->flags &= ~CEPH_OPT_NOMSGSIGN;
			break;
		case Opt_nocephx_sign_messages:
			opt->flags |= CEPH_OPT_NOMSGSIGN;
			break;

		case Opt_tcp_nodelay:
			opt->flags |= CEPH_OPT_TCP_NODELAY;
			break;
		case Opt_notcp_nodelay:
			opt->flags &= ~CEPH_OPT_TCP_NODELAY;
			break;

		case Opt_abort_on_full:
			opt->flags |= CEPH_OPT_ABORT_ON_FULL;
			break;

		default:
			FUNC0(token);
		}
	}

	/* success */
	return opt;

out:
	FUNC4(opt);
	return FUNC1(err);
}