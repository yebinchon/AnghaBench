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
struct wm_adsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 unsigned int HALO_SCRATCH1 ; 
 unsigned int HALO_SCRATCH2 ; 
 unsigned int HALO_SCRATCH3 ; 
 unsigned int HALO_SCRATCH4 ; 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct wm_adsp*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct wm_adsp *dsp)
{
	unsigned int offs[] = {
		HALO_SCRATCH1, HALO_SCRATCH2, HALO_SCRATCH3, HALO_SCRATCH4,
	};

	FUNC2(dsp, FUNC0(offs), offs);

	FUNC1(dsp, "FW SCRATCH 0:0x%x 1:0x%x 2:0x%x 3:0x%x\n",
		 offs[0], offs[1], offs[2], offs[3]);
}