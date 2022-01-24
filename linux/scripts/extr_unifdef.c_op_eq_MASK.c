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
typedef  int /*<<< orphan*/  Linetype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Linetype FUNC1(int *p, Linetype at, int a, Linetype bt, int b) {
	return FUNC0(p, a == b, at, bt);
}