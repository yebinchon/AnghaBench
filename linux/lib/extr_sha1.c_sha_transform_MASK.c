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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC5(__u32 *digest, const char *data, __u32 *array)
{
	__u32 A, B, C, D, E;

	A = digest[0];
	B = digest[1];
	C = digest[2];
	D = digest[3];
	E = digest[4];

	/* Round 1 - iterations 0-16 take their input from 'data' */
	FUNC0( 0, A, B, C, D, E);
	FUNC0( 1, E, A, B, C, D);
	FUNC0( 2, D, E, A, B, C);
	FUNC0( 3, C, D, E, A, B);
	FUNC0( 4, B, C, D, E, A);
	FUNC0( 5, A, B, C, D, E);
	FUNC0( 6, E, A, B, C, D);
	FUNC0( 7, D, E, A, B, C);
	FUNC0( 8, C, D, E, A, B);
	FUNC0( 9, B, C, D, E, A);
	FUNC0(10, A, B, C, D, E);
	FUNC0(11, E, A, B, C, D);
	FUNC0(12, D, E, A, B, C);
	FUNC0(13, C, D, E, A, B);
	FUNC0(14, B, C, D, E, A);
	FUNC0(15, A, B, C, D, E);

	/* Round 1 - tail. Input from 512-bit mixing array */
	FUNC1(16, E, A, B, C, D);
	FUNC1(17, D, E, A, B, C);
	FUNC1(18, C, D, E, A, B);
	FUNC1(19, B, C, D, E, A);

	/* Round 2 */
	FUNC2(20, A, B, C, D, E);
	FUNC2(21, E, A, B, C, D);
	FUNC2(22, D, E, A, B, C);
	FUNC2(23, C, D, E, A, B);
	FUNC2(24, B, C, D, E, A);
	FUNC2(25, A, B, C, D, E);
	FUNC2(26, E, A, B, C, D);
	FUNC2(27, D, E, A, B, C);
	FUNC2(28, C, D, E, A, B);
	FUNC2(29, B, C, D, E, A);
	FUNC2(30, A, B, C, D, E);
	FUNC2(31, E, A, B, C, D);
	FUNC2(32, D, E, A, B, C);
	FUNC2(33, C, D, E, A, B);
	FUNC2(34, B, C, D, E, A);
	FUNC2(35, A, B, C, D, E);
	FUNC2(36, E, A, B, C, D);
	FUNC2(37, D, E, A, B, C);
	FUNC2(38, C, D, E, A, B);
	FUNC2(39, B, C, D, E, A);

	/* Round 3 */
	FUNC3(40, A, B, C, D, E);
	FUNC3(41, E, A, B, C, D);
	FUNC3(42, D, E, A, B, C);
	FUNC3(43, C, D, E, A, B);
	FUNC3(44, B, C, D, E, A);
	FUNC3(45, A, B, C, D, E);
	FUNC3(46, E, A, B, C, D);
	FUNC3(47, D, E, A, B, C);
	FUNC3(48, C, D, E, A, B);
	FUNC3(49, B, C, D, E, A);
	FUNC3(50, A, B, C, D, E);
	FUNC3(51, E, A, B, C, D);
	FUNC3(52, D, E, A, B, C);
	FUNC3(53, C, D, E, A, B);
	FUNC3(54, B, C, D, E, A);
	FUNC3(55, A, B, C, D, E);
	FUNC3(56, E, A, B, C, D);
	FUNC3(57, D, E, A, B, C);
	FUNC3(58, C, D, E, A, B);
	FUNC3(59, B, C, D, E, A);

	/* Round 4 */
	FUNC4(60, A, B, C, D, E);
	FUNC4(61, E, A, B, C, D);
	FUNC4(62, D, E, A, B, C);
	FUNC4(63, C, D, E, A, B);
	FUNC4(64, B, C, D, E, A);
	FUNC4(65, A, B, C, D, E);
	FUNC4(66, E, A, B, C, D);
	FUNC4(67, D, E, A, B, C);
	FUNC4(68, C, D, E, A, B);
	FUNC4(69, B, C, D, E, A);
	FUNC4(70, A, B, C, D, E);
	FUNC4(71, E, A, B, C, D);
	FUNC4(72, D, E, A, B, C);
	FUNC4(73, C, D, E, A, B);
	FUNC4(74, B, C, D, E, A);
	FUNC4(75, A, B, C, D, E);
	FUNC4(76, E, A, B, C, D);
	FUNC4(77, D, E, A, B, C);
	FUNC4(78, C, D, E, A, B);
	FUNC4(79, B, C, D, E, A);

	digest[0] += A;
	digest[1] += B;
	digest[2] += C;
	digest[3] += D;
	digest[4] += E;
}