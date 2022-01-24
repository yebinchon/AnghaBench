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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hdspm {int io_type; } ;

/* Variables and functions */
#define  AES32 132 
#define  AIO 131 
 int /*<<< orphan*/  HDSPM_freqReg ; 
#define  MADI 130 
#define  MADIface 129 
#define  RayDAT 128 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hdspm *hdspm, int rate)
{
	u64 n;

	if (FUNC3(rate <= 0))
		return;

	if (rate >= 112000)
		rate /= 4;
	else if (rate >= 56000)
		rate /= 2;

	switch (hdspm->io_type) {
	case MADIface:
		n = 131072000000000ULL;  /* 125 MHz */
		break;
	case MADI:
	case AES32:
		n = 110069313433624ULL;  /* 105 MHz */
		break;
	case RayDAT:
	case AIO:
		n = 104857600000000ULL;  /* 100 MHz */
		break;
	default:
		FUNC2();
		return;
	}

	n = FUNC0(n, rate);
	/* n should be less than 2^32 for being written to FREQ register */
	FUNC3(n >> 32);
	FUNC1(hdspm, HDSPM_freqReg, (u32)n);
}