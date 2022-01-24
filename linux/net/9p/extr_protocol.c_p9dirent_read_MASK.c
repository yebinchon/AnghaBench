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
struct p9_fcall {int size; int capacity; char* sdata; int offset; } ;
struct p9_dirent {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_off; int /*<<< orphan*/  qid; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct p9_fcall*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_fcall*) ; 

int FUNC5(struct p9_client *clnt, char *buf, int len,
		  struct p9_dirent *dirent)
{
	struct p9_fcall fake_pdu;
	int ret;
	char *nameptr;

	fake_pdu.size = len;
	fake_pdu.capacity = len;
	fake_pdu.sdata = buf;
	fake_pdu.offset = 0;

	ret = FUNC2(&fake_pdu, clnt->proto_version, "Qqbs", &dirent->qid,
			  &dirent->d_off, &dirent->d_type, &nameptr);
	if (ret) {
		FUNC1(P9_DEBUG_9P, "<<< p9dirent_read failed: %d\n", ret);
		FUNC4(clnt, &fake_pdu);
		return ret;
	}

	ret = FUNC3(dirent->d_name, nameptr, sizeof(dirent->d_name));
	if (ret < 0) {
		FUNC1(P9_DEBUG_ERROR,
			 "On the wire dirent name too long: %s\n",
			 nameptr);
		FUNC0(nameptr);
		return ret;
	}
	FUNC0(nameptr);

	return fake_pdu.offset;
}