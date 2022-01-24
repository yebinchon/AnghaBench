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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RINGBUF_TYPE_DATA_TYPE_LEN_MAX ; 
 int /*<<< orphan*/  RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  RINGBUF_TYPE_TIME_EXTEND ; 
 int /*<<< orphan*/  RINGBUF_TYPE_TIME_STAMP ; 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*) ; 

int FUNC4(struct trace_seq *s)
{
	FUNC3(s, "# compressed entry header\n");
	FUNC3(s, "\ttype_len    :    5 bits\n");
	FUNC3(s, "\ttime_delta  :   27 bits\n");
	FUNC3(s, "\tarray       :   32 bits\n");
	FUNC2(s, '\n');
	FUNC1(s, "\tpadding     : type == %d\n",
			 RINGBUF_TYPE_PADDING);
	FUNC1(s, "\ttime_extend : type == %d\n",
			 RINGBUF_TYPE_TIME_EXTEND);
	FUNC1(s, "\ttime_stamp : type == %d\n",
			 RINGBUF_TYPE_TIME_STAMP);
	FUNC1(s, "\tdata max type_len  == %d\n",
			 RINGBUF_TYPE_DATA_TYPE_LEN_MAX);

	return !FUNC0(s);
}