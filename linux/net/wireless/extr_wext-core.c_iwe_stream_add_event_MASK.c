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
struct iw_request_info {int dummy; } ;
struct iw_event {int len; char u; } ;

/* Variables and functions */
 int IW_EV_LCP_PK_LEN ; 
 int FUNC0 (struct iw_request_info*,int) ; 
 int FUNC1 (struct iw_request_info*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

char *FUNC4(struct iw_request_info *info, char *stream,
			   char *ends, struct iw_event *iwe, int event_len)
{
	int lcp_len = FUNC1(info);

	event_len = FUNC0(info, event_len);

	/* Check if it's possible */
	if (FUNC2((stream + event_len) < ends)) {
		iwe->len = event_len;
		/* Beware of alignement issues on 64 bits */
		FUNC3(stream, (char *) iwe, IW_EV_LCP_PK_LEN);
		FUNC3(stream + lcp_len, &iwe->u,
		       event_len - lcp_len);
		stream += event_len;
	}

	return stream;
}