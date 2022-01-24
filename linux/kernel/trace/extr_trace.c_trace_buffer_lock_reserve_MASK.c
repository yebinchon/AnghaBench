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
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 struct ring_buffer_event* FUNC0 (struct ring_buffer*,int,unsigned long,unsigned long,int) ; 

struct ring_buffer_event *
FUNC1(struct ring_buffer *buffer,
			  int type,
			  unsigned long len,
			  unsigned long flags, int pc)
{
	return FUNC0(buffer, type, len, flags, pc);
}