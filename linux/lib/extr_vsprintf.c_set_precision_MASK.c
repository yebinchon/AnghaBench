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
struct printf_spec {int precision; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRECISION_MAX ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct printf_spec *spec, int prec)
{
	spec->precision = prec;
	if (FUNC0(spec->precision != prec, "precision %d too large", prec)) {
		spec->precision = FUNC1(prec, 0, PRECISION_MAX);
	}
}