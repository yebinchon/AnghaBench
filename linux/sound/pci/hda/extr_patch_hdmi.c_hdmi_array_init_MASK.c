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
struct hdmi_spec_per_pin {int dummy; } ;
struct hdmi_spec_per_cvt {int dummy; } ;
struct hdmi_spec {int /*<<< orphan*/  cvts; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(struct hdmi_spec *spec, int nums)
{
	FUNC0(&spec->pins, sizeof(struct hdmi_spec_per_pin), nums);
	FUNC0(&spec->cvts, sizeof(struct hdmi_spec_per_cvt), nums);
}