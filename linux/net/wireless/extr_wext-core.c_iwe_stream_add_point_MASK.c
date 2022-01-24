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
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct iw_event {int len; TYPE_2__ u; } ;

/* Variables and functions */
 int IW_EV_LCP_PK_LEN ; 
 int IW_EV_POINT_OFF ; 
 int IW_EV_POINT_PK_LEN ; 
 int FUNC0 (struct iw_request_info*) ; 
 int FUNC1 (struct iw_request_info*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

char *FUNC4(struct iw_request_info *info, char *stream,
			   char *ends, struct iw_event *iwe, char *extra)
{
	int event_len = FUNC1(info) + iwe->u.data.length;
	int point_len = FUNC1(info);
	int lcp_len   = FUNC0(info);

	/* Check if it's possible */
	if (FUNC2((stream + event_len) < ends)) {
		iwe->len = event_len;
		FUNC3(stream, (char *) iwe, IW_EV_LCP_PK_LEN);
		FUNC3(stream + lcp_len,
		       ((char *) &iwe->u) + IW_EV_POINT_OFF,
		       IW_EV_POINT_PK_LEN - IW_EV_LCP_PK_LEN);
		if (iwe->u.data.length && extra)
			FUNC3(stream + point_len, extra, iwe->u.data.length);
		stream += event_len;
	}

	return stream;
}