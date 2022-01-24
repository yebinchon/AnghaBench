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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct kstatfs {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct kstatfs*) ; 
 struct super_block* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(dev_t dev, struct kstatfs *sbuf)
{
	struct super_block *s = FUNC2(dev);
	int err;
	if (!s)
		return -EINVAL;

	err = FUNC1(s->s_root, sbuf);
	FUNC0(s);
	return err;
}