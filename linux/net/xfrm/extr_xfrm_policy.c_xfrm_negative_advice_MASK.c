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
struct dst_entry {scalar_t__ obsolete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 

__attribute__((used)) static struct dst_entry *FUNC1(struct dst_entry *dst)
{
	if (dst) {
		if (dst->obsolete) {
			FUNC0(dst);
			dst = NULL;
		}
	}
	return dst;
}