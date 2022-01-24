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
struct hdac_ext_stream {scalar_t__ pplc_addr; } ;

/* Variables and functions */
 unsigned char AZX_PPLCCTL_STRST ; 
 scalar_t__ AZX_REG_PPLCCTL ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_ext_stream*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 

void FUNC5(struct hdac_ext_stream *stream)
{
	unsigned char val;
	int timeout;

	FUNC1(stream);

	FUNC2(stream->pplc_addr, AZX_REG_PPLCCTL,
			 AZX_PPLCCTL_STRST, AZX_PPLCCTL_STRST);
	FUNC3(3);
	timeout = 50;
	do {
		val = FUNC0(stream->pplc_addr + AZX_REG_PPLCCTL) &
				AZX_PPLCCTL_STRST;
		if (val)
			break;
		FUNC3(3);
	} while (--timeout);
	val &= ~AZX_PPLCCTL_STRST;
	FUNC4(val, stream->pplc_addr + AZX_REG_PPLCCTL);
	FUNC3(3);

	timeout = 50;
	/* waiting for hardware to report that the stream is out of reset */
	do {
		val = FUNC0(stream->pplc_addr + AZX_REG_PPLCCTL) & AZX_PPLCCTL_STRST;
		if (!val)
			break;
		FUNC3(3);
	} while (--timeout);

}