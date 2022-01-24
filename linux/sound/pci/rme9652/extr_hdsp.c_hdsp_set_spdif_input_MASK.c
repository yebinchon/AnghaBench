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
struct hdsp {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSP_SPDIFInputMask ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hdsp *hdsp, int in)
{
	hdsp->control_register &= ~HDSP_SPDIFInputMask;
	hdsp->control_register |= FUNC0(in);
	FUNC1(hdsp, HDSP_controlRegister, hdsp->control_register);
	return 0;
}