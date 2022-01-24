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
struct __kfifo {unsigned int in; unsigned int out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct __kfifo*,void*,unsigned int,unsigned int) ; 

unsigned int FUNC1(struct __kfifo *fifo,
		void *buf, unsigned int len)
{
	unsigned int l;

	l = fifo->in - fifo->out;
	if (len > l)
		len = l;

	FUNC0(fifo, buf, len, fifo->out);
	return len;
}