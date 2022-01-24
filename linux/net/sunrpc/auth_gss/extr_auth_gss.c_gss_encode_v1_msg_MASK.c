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
struct user_namespace {int dummy; } ;
struct TYPE_4__ {int len; char* data; } ;
struct gss_upcall_msg {char* databuf; TYPE_2__ msg; int /*<<< orphan*/  uid; TYPE_1__* auth; } ;
struct gss_api_mech {int /*<<< orphan*/  gm_upcall_enctypes; int /*<<< orphan*/  gm_name; } ;
struct cred {struct user_namespace* user_ns; } ;
struct TYPE_3__ {struct gss_api_mech* mech; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,char*,...) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct gss_upcall_msg *gss_msg,
				const char *service_name,
				const char *target_name,
				const struct cred *cred)
{
	struct user_namespace *userns = cred->user_ns;
	struct gss_api_mech *mech = gss_msg->auth->mech;
	char *p = gss_msg->databuf;
	size_t buflen = sizeof(gss_msg->databuf);
	int len;

	len = FUNC2(p, buflen, "mech=%s uid=%d", mech->gm_name,
			FUNC1(userns, gss_msg->uid));
	buflen -= len;
	p += len;
	gss_msg->msg.len = len;

	/*
	 * target= is a full service principal that names the remote
	 * identity that we are authenticating to.
	 */
	if (target_name) {
		len = FUNC2(p, buflen, " target=%s", target_name);
		buflen -= len;
		p += len;
		gss_msg->msg.len += len;
	}

	/*
	 * gssd uses service= and srchost= to select a matching key from
	 * the system's keytab to use as the source principal.
	 *
	 * service= is the service name part of the source principal,
	 * or "*" (meaning choose any).
	 *
	 * srchost= is the hostname part of the source principal. When
	 * not provided, gssd uses the local hostname.
	 */
	if (service_name) {
		char *c = FUNC3(service_name, '@');

		if (!c)
			len = FUNC2(p, buflen, " service=%s",
					service_name);
		else
			len = FUNC2(p, buflen,
					" service=%.*s srchost=%s",
					(int)(c - service_name),
					service_name, c + 1);
		buflen -= len;
		p += len;
		gss_msg->msg.len += len;
	}

	if (mech->gm_upcall_enctypes) {
		len = FUNC2(p, buflen, " enctypes=%s",
				mech->gm_upcall_enctypes);
		buflen -= len;
		p += len;
		gss_msg->msg.len += len;
	}
	FUNC4(gss_msg->databuf);
	len = FUNC2(p, buflen, "\n");
	if (len == 0)
		goto out_overflow;
	gss_msg->msg.len += len;
	gss_msg->msg.data = gss_msg->databuf;
	return 0;
out_overflow:
	FUNC0(1);
	return -ENOMEM;
}