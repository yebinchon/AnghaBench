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
struct img_spdif_out {int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_SPDIF_OUT_CSH_UV ; 
 int /*<<< orphan*/  IMG_SPDIF_OUT_CSL ; 
 int /*<<< orphan*/  IMG_SPDIF_OUT_CTL ; 
 int IMG_SPDIF_OUT_CTL_SRT_MASK ; 
 int FUNC0 (struct img_spdif_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_spdif_out*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct img_spdif_out *spdif)
{
	u32 ctl, status_low, status_high;

	ctl = FUNC0(spdif, IMG_SPDIF_OUT_CTL) &
			~IMG_SPDIF_OUT_CTL_SRT_MASK;
	status_low = FUNC0(spdif, IMG_SPDIF_OUT_CSL);
	status_high = FUNC0(spdif, IMG_SPDIF_OUT_CSH_UV);

	FUNC2(spdif->rst);
	FUNC3(spdif->rst);

	FUNC1(spdif, ctl, IMG_SPDIF_OUT_CTL);
	FUNC1(spdif, status_low, IMG_SPDIF_OUT_CSL);
	FUNC1(spdif, status_high, IMG_SPDIF_OUT_CSH_UV);
}