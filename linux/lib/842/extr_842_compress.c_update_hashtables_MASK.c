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
struct sw842_param {int in; int instart; } ;

/* Variables and functions */
 int I2_BITS ; 
 int I4_BITS ; 
 int I8_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct sw842_param*,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct sw842_param *p)
{
	u64 pos = p->in - p->instart;
	u64 n8 = (pos >> 3) % (1 << I8_BITS);
	u64 n4 = (pos >> 2) % (1 << I4_BITS);
	u64 n2 = (pos >> 1) % (1 << I2_BITS);

	FUNC0(p, 8, n8, 0);
	FUNC0(p, 4, n4, 0);
	FUNC0(p, 4, n4, 1);
	FUNC0(p, 2, n2, 0);
	FUNC0(p, 2, n2, 1);
	FUNC0(p, 2, n2, 2);
	FUNC0(p, 2, n2, 3);
}