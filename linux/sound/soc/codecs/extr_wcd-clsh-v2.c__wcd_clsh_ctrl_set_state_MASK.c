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
struct wcd_clsh_ctrl {int dummy; } ;

/* Variables and functions */
#define  WCD_CLSH_STATE_EAR 131 
#define  WCD_CLSH_STATE_HPHL 130 
#define  WCD_CLSH_STATE_HPHR 129 
#define  WCD_CLSH_STATE_LO 128 
 int /*<<< orphan*/  FUNC0 (struct wcd_clsh_ctrl*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wcd_clsh_ctrl*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wcd_clsh_ctrl*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wcd_clsh_ctrl*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct wcd_clsh_ctrl *ctrl, int req_state,
				    bool is_enable, int mode)
{
	switch (req_state) {
	case WCD_CLSH_STATE_EAR:
		FUNC0(ctrl, req_state, is_enable, mode);
		break;
	case WCD_CLSH_STATE_HPHL:
		FUNC1(ctrl, req_state, is_enable, mode);
		break;
	case WCD_CLSH_STATE_HPHR:
		FUNC2(ctrl, req_state, is_enable, mode);
		break;
		break;
	case WCD_CLSH_STATE_LO:
		FUNC3(ctrl, req_state, is_enable, mode);
		break;
	default:
		break;
	}

	return 0;
}