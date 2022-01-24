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
struct p9_wstat {int dummy; } ;
struct p9_fcall {int size; int capacity; char* sdata; int offset; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct p9_fcall*,int /*<<< orphan*/ ,char*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_client*,struct p9_fcall*) ; 

int FUNC3(struct p9_client *clnt, char *buf, int len, struct p9_wstat *st)
{
	struct p9_fcall fake_pdu;
	int ret;

	fake_pdu.size = len;
	fake_pdu.capacity = len;
	fake_pdu.sdata = buf;
	fake_pdu.offset = 0;

	ret = FUNC1(&fake_pdu, clnt->proto_version, "S", st);
	if (ret) {
		FUNC0(P9_DEBUG_9P, "<<< p9stat_read failed: %d\n", ret);
		FUNC2(clnt, &fake_pdu);
		return ret;
	}

	return fake_pdu.offset;
}