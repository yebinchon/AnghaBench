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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (struct feat_fd*,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct feat_fd*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct feat_fd *ff, void *addr, ssize_t size)
{
	if (!ff->buf)
		return FUNC1(ff, addr, size);
	return FUNC0(ff, addr, size);
}