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
typedef  int u32 ;
struct img_prl_out {int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_PRL_OUT_CTL ; 
 int IMG_PRL_OUT_CTL_ME_MASK ; 
 int FUNC0 (struct img_prl_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_prl_out*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct img_prl_out *prl)
{
	u32 ctl;

	ctl = FUNC0(prl, IMG_PRL_OUT_CTL) &
			~IMG_PRL_OUT_CTL_ME_MASK;

	FUNC2(prl->rst);
	FUNC3(prl->rst);

	FUNC1(prl, ctl, IMG_PRL_OUT_CTL);
}