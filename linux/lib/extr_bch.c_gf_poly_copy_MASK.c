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
struct gf_poly {int /*<<< orphan*/  deg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gf_poly*,struct gf_poly*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gf_poly *dst, struct gf_poly *src)
{
	FUNC1(dst, src, FUNC0(src->deg));
}