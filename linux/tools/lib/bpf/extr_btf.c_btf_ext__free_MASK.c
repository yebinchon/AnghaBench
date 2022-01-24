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
struct btf_ext {struct btf_ext* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf_ext*) ; 

void FUNC1(struct btf_ext *btf_ext)
{
	if (!btf_ext)
		return;
	FUNC0(btf_ext->data);
	FUNC0(btf_ext);
}