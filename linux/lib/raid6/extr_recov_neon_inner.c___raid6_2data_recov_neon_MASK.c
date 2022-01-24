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
typedef  int /*<<< orphan*/  uint8x16_t ;
typedef  int /*<<< orphan*/  const uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC7(int bytes, uint8_t *p, uint8_t *q, uint8_t *dp,
			      uint8_t *dq, const uint8_t *pbmul,
			      const uint8_t *qmul)
{
	uint8x16_t pm0 = FUNC3(pbmul);
	uint8x16_t pm1 = FUNC3(pbmul + 16);
	uint8x16_t qm0 = FUNC3(qmul);
	uint8x16_t qm1 = FUNC3(qmul + 16);
	uint8x16_t x0f = FUNC1(0x0f);

	/*
	 * while ( bytes-- ) {
	 *	uint8_t px, qx, db;
	 *
	 *	px    = *p ^ *dp;
	 *	qx    = qmul[*q ^ *dq];
	 *	*dq++ = db = pbmul[px] ^ qx;
	 *	*dp++ = db ^ px;
	 *	p++; q++;
	 * }
	 */

	while (bytes) {
		uint8x16_t vx, vy, px, qx, db;

		px = FUNC2(FUNC3(p), FUNC3(dp));
		vx = FUNC2(FUNC3(q), FUNC3(dq));

		vy = FUNC5(vx, 4);
		vx = FUNC4(qm0, FUNC0(vx, x0f));
		vy = FUNC4(qm1, vy);
		qx = FUNC2(vx, vy);

		vy = FUNC5(px, 4);
		vx = FUNC4(pm0, FUNC0(px, x0f));
		vy = FUNC4(pm1, vy);
		vx = FUNC2(vx, vy);
		db = FUNC2(vx, qx);

		FUNC6(dq, db);
		FUNC6(dp, FUNC2(db, px));

		bytes -= 16;
		p += 16;
		q += 16;
		dp += 16;
		dq += 16;
	}
}