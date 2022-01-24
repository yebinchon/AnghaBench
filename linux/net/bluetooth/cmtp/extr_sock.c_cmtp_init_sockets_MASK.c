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

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_CMTP ; 
 int /*<<< orphan*/  BTPROTO_HIDP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmtp_proto ; 
 int /*<<< orphan*/  cmtp_sk_list ; 
 int /*<<< orphan*/  cmtp_sock_family_ops ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void)
{
	int err;

	err = FUNC5(&cmtp_proto, 0);
	if (err < 0)
		return err;

	err = FUNC3(BTPROTO_CMTP, &cmtp_sock_family_ops);
	if (err < 0) {
		FUNC0("Can't register CMTP socket");
		goto error;
	}

	err = FUNC2(&init_net, "cmtp", &cmtp_sk_list, NULL);
	if (err < 0) {
		FUNC0("Failed to create CMTP proc file");
		FUNC4(BTPROTO_HIDP);
		goto error;
	}

	FUNC1("CMTP socket layer initialized");

	return 0;

error:
	FUNC6(&cmtp_proto);
	return err;
}