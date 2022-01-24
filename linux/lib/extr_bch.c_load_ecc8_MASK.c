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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bch_control {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bch_control*) ; 
 int FUNC1 (struct bch_control*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bch_control *bch, uint32_t *dst,
		      const uint8_t *src)
{
	uint8_t pad[4] = {0, 0, 0, 0};
	unsigned int i, nwords = FUNC1(bch)-1;

	for (i = 0; i < nwords; i++, src += 4)
		dst[i] = (src[0] << 24)|(src[1] << 16)|(src[2] << 8)|src[3];

	FUNC2(pad, src, FUNC0(bch)-4*nwords);
	dst[nwords] = (pad[0] << 24)|(pad[1] << 16)|(pad[2] << 8)|pad[3];
}