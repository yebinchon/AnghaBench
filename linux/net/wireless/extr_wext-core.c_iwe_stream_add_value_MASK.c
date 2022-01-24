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
struct iw_event {char u; int len; } ;

/* Variables and functions */
 scalar_t__ IW_EV_LCP_LEN ; 
 int FUNC0 (struct iw_request_info*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

char *FUNC3(struct iw_request_info *info, char *event,
			   char *value, char *ends, struct iw_event *iwe,
			   int event_len)
{
	int lcp_len = FUNC0(info);

	/* Don't duplicate LCP */
	event_len -= IW_EV_LCP_LEN;

	/* Check if it's possible */
	if (FUNC1((value + event_len) < ends)) {
		/* Add new value */
		FUNC2(value, &iwe->u, event_len);
		value += event_len;
		/* Patch LCP */
		iwe->len = value - event;
		FUNC2(event, (char *) iwe, lcp_len);
	}

	return value;
}