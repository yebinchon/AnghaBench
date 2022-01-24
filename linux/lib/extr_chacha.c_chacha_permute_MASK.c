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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(u32 *x, int nrounds)
{
	int i;

	/* whitelist the allowed round counts */
	FUNC0(nrounds != 20 && nrounds != 12);

	for (i = 0; i < nrounds; i += 2) {
		x[0]  += x[4];    x[12] = FUNC1(x[12] ^ x[0],  16);
		x[1]  += x[5];    x[13] = FUNC1(x[13] ^ x[1],  16);
		x[2]  += x[6];    x[14] = FUNC1(x[14] ^ x[2],  16);
		x[3]  += x[7];    x[15] = FUNC1(x[15] ^ x[3],  16);

		x[8]  += x[12];   x[4]  = FUNC1(x[4]  ^ x[8],  12);
		x[9]  += x[13];   x[5]  = FUNC1(x[5]  ^ x[9],  12);
		x[10] += x[14];   x[6]  = FUNC1(x[6]  ^ x[10], 12);
		x[11] += x[15];   x[7]  = FUNC1(x[7]  ^ x[11], 12);

		x[0]  += x[4];    x[12] = FUNC1(x[12] ^ x[0],   8);
		x[1]  += x[5];    x[13] = FUNC1(x[13] ^ x[1],   8);
		x[2]  += x[6];    x[14] = FUNC1(x[14] ^ x[2],   8);
		x[3]  += x[7];    x[15] = FUNC1(x[15] ^ x[3],   8);

		x[8]  += x[12];   x[4]  = FUNC1(x[4]  ^ x[8],   7);
		x[9]  += x[13];   x[5]  = FUNC1(x[5]  ^ x[9],   7);
		x[10] += x[14];   x[6]  = FUNC1(x[6]  ^ x[10],  7);
		x[11] += x[15];   x[7]  = FUNC1(x[7]  ^ x[11],  7);

		x[0]  += x[5];    x[15] = FUNC1(x[15] ^ x[0],  16);
		x[1]  += x[6];    x[12] = FUNC1(x[12] ^ x[1],  16);
		x[2]  += x[7];    x[13] = FUNC1(x[13] ^ x[2],  16);
		x[3]  += x[4];    x[14] = FUNC1(x[14] ^ x[3],  16);

		x[10] += x[15];   x[5]  = FUNC1(x[5]  ^ x[10], 12);
		x[11] += x[12];   x[6]  = FUNC1(x[6]  ^ x[11], 12);
		x[8]  += x[13];   x[7]  = FUNC1(x[7]  ^ x[8],  12);
		x[9]  += x[14];   x[4]  = FUNC1(x[4]  ^ x[9],  12);

		x[0]  += x[5];    x[15] = FUNC1(x[15] ^ x[0],   8);
		x[1]  += x[6];    x[12] = FUNC1(x[12] ^ x[1],   8);
		x[2]  += x[7];    x[13] = FUNC1(x[13] ^ x[2],   8);
		x[3]  += x[4];    x[14] = FUNC1(x[14] ^ x[3],   8);

		x[10] += x[15];   x[5]  = FUNC1(x[5]  ^ x[10],  7);
		x[11] += x[12];   x[6]  = FUNC1(x[6]  ^ x[11],  7);
		x[8]  += x[13];   x[7]  = FUNC1(x[7]  ^ x[8],   7);
		x[9]  += x[14];   x[4]  = FUNC1(x[4]  ^ x[9],   7);
	}
}