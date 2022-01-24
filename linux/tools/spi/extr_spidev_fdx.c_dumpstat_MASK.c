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
typedef  int __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_IOC_RD_BITS_PER_WORD ; 
 int /*<<< orphan*/  SPI_IOC_RD_LSB_FIRST ; 
 int /*<<< orphan*/  SPI_IOC_RD_MAX_SPEED_HZ ; 
 int /*<<< orphan*/  SPI_IOC_RD_MODE32 ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,int,char*,int) ; 

__attribute__((used)) static void FUNC3(const char *name, int fd)
{
	__u8	lsb, bits;
	__u32	mode, speed;

	if (FUNC0(fd, SPI_IOC_RD_MODE32, &mode) < 0) {
		FUNC1("SPI rd_mode");
		return;
	}
	if (FUNC0(fd, SPI_IOC_RD_LSB_FIRST, &lsb) < 0) {
		FUNC1("SPI rd_lsb_fist");
		return;
	}
	if (FUNC0(fd, SPI_IOC_RD_BITS_PER_WORD, &bits) < 0) {
		FUNC1("SPI bits_per_word");
		return;
	}
	if (FUNC0(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed) < 0) {
		FUNC1("SPI max_speed_hz");
		return;
	}

	FUNC2("%s: spi mode 0x%x, %d bits %sper word, %d Hz max\n",
		name, mode, bits, lsb ? "(lsb first) " : "", speed);
}