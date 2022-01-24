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
struct nfsd_net {scalar_t__ nfsd_serv; } ;
struct file {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum vers_op { ____Placeholder_vers_op } vers_op ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ EINVAL ; 
 int NFSD_AVAIL ; 
 int NFSD_CLEAR ; 
 int NFSD_SET ; 
 int NFSD_SUPPORTED_MINOR_VERSION ; 
 int NFSD_TEST ; 
 int SIMPLE_TRANSACTION_LIMIT ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct nfsd_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd_net*,unsigned int,int) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int FUNC4 (struct nfsd_net*,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsd_net*) ; 
 int FUNC6 (struct nfsd_net*,int,int) ; 
 int FUNC7 (char**,char*,size_t) ; 
 int FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int,char*) ; 

__attribute__((used)) static ssize_t FUNC10(struct file *file, char *buf, size_t size)
{
	char *mesg = buf;
	char *vers, *minorp, sign;
	int len, num, remaining;
	ssize_t tlen = 0;
	char *sep;
	struct nfsd_net *nn = FUNC1(FUNC2(file), nfsd_net_id);

	if (size>0) {
		if (nn->nfsd_serv)
			/* Cannot change versions without updating
			 * nn->nfsd_serv->sv_xdrsize, and reallocing
			 * rq_argp and rq_resp
			 */
			return -EBUSY;
		if (buf[size-1] != '\n')
			return -EINVAL;
		buf[size-1] = 0;

		vers = mesg;
		len = FUNC7(&mesg, vers, size);
		if (len <= 0) return -EINVAL;
		do {
			enum vers_op cmd;
			unsigned minor;
			sign = *vers;
			if (sign == '+' || sign == '-')
				num = FUNC8((vers+1), &minorp, 0);
			else
				num = FUNC8(vers, &minorp, 0);
			if (*minorp == '.') {
				if (num != 4)
					return -EINVAL;
				if (FUNC0(minorp+1, 0, &minor) < 0)
					return -EINVAL;
			}

			cmd = sign == '-' ? NFSD_CLEAR : NFSD_SET;
			switch(num) {
			case 2:
			case 3:
				FUNC6(nn, num, cmd);
				break;
			case 4:
				if (*minorp == '.') {
					if (FUNC3(nn, minor, cmd) < 0)
						return -EINVAL;
				} else if ((cmd == NFSD_SET) != FUNC6(nn, num, NFSD_TEST)) {
					/*
					 * Either we have +4 and no minors are enabled,
					 * or we have -4 and at least one minor is enabled.
					 * In either case, propagate 'cmd' to all minors.
					 */
					minor = 0;
					while (FUNC3(nn, minor, cmd) >= 0)
						minor++;
				}
				break;
			default:
				return -EINVAL;
			}
			vers += len + 1;
		} while ((len = FUNC7(&mesg, vers, size)) > 0);
		/* If all get turned off, turn them back on, as
		 * having no versions is BAD
		 */
		FUNC5(nn);
	}

	/* Now write current state into reply buffer */
	len = 0;
	sep = "";
	remaining = SIMPLE_TRANSACTION_LIMIT;
	for (num=2 ; num <= 4 ; num++) {
		int minor;
		if (!FUNC6(nn, num, NFSD_AVAIL))
			continue;

		minor = -1;
		do {
			len = FUNC4(nn, buf, remaining,
					sep, num, minor);
			if (len >= remaining)
				goto out;
			remaining -= len;
			buf += len;
			tlen += len;
			minor++;
			if (len)
				sep = " ";
		} while (num == 4 && minor <= NFSD_SUPPORTED_MINOR_VERSION);
	}
out:
	len = FUNC9(buf, remaining, "\n");
	if (len >= remaining)
		return -EINVAL;
	return tlen + len;
}