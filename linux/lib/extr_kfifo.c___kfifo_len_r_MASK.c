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
struct __kfifo {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct __kfifo*,size_t) ; 

unsigned int FUNC1(struct __kfifo *fifo, size_t recsize)
{
	return FUNC0(fifo, recsize);
}