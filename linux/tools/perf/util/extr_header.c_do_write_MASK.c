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
struct feat_fd {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int FUNC0 (struct feat_fd*,void const*,size_t) ; 
 int FUNC1 (struct feat_fd*,void const*,size_t) ; 

int FUNC2(struct feat_fd *ff, const void *buf, size_t size)
{
	if (!ff->buf)
		return FUNC1(ff, buf, size);
	return FUNC0(ff, buf, size);
}