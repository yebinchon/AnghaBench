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
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  G ; 
 int /*<<< orphan*/  H ; 
 scalar_t__ const K1 ; 
 scalar_t__ const K2 ; 
 scalar_t__ const K3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__ const,int) ; 

__attribute__((used)) static __u32 FUNC1(__u32 buf[4], __u32 const in[8])
{
	__u32 a = buf[0], b = buf[1], c = buf[2], d = buf[3];

	/* Round 1 */
	FUNC0(F, a, b, c, d, in[0] + K1,  3);
	FUNC0(F, d, a, b, c, in[1] + K1,  7);
	FUNC0(F, c, d, a, b, in[2] + K1, 11);
	FUNC0(F, b, c, d, a, in[3] + K1, 19);
	FUNC0(F, a, b, c, d, in[4] + K1,  3);
	FUNC0(F, d, a, b, c, in[5] + K1,  7);
	FUNC0(F, c, d, a, b, in[6] + K1, 11);
	FUNC0(F, b, c, d, a, in[7] + K1, 19);

	/* Round 2 */
	FUNC0(G, a, b, c, d, in[1] + K2,  3);
	FUNC0(G, d, a, b, c, in[3] + K2,  5);
	FUNC0(G, c, d, a, b, in[5] + K2,  9);
	FUNC0(G, b, c, d, a, in[7] + K2, 13);
	FUNC0(G, a, b, c, d, in[0] + K2,  3);
	FUNC0(G, d, a, b, c, in[2] + K2,  5);
	FUNC0(G, c, d, a, b, in[4] + K2,  9);
	FUNC0(G, b, c, d, a, in[6] + K2, 13);

	/* Round 3 */
	FUNC0(H, a, b, c, d, in[3] + K3,  3);
	FUNC0(H, d, a, b, c, in[7] + K3,  9);
	FUNC0(H, c, d, a, b, in[2] + K3, 11);
	FUNC0(H, b, c, d, a, in[6] + K3, 15);
	FUNC0(H, a, b, c, d, in[1] + K3,  3);
	FUNC0(H, d, a, b, c, in[5] + K3,  9);
	FUNC0(H, c, d, a, b, in[0] + K3, 11);
	FUNC0(H, b, c, d, a, in[4] + K3, 15);

	buf[0] += a;
	buf[1] += b;
	buf[2] += c;
	buf[3] += d;

	return buf[1]; /* "most hashed" word */
}