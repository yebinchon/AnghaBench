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
struct cmipci {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ CM_REG_SB16_ADDR ; 
 scalar_t__ CM_REG_SB16_DATA ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static unsigned char FUNC2(struct cmipci *s, unsigned char idx)
{
	unsigned char v;

	FUNC1(idx, s->iobase + CM_REG_SB16_ADDR);
	v = FUNC0(s->iobase + CM_REG_SB16_DATA);
	return v;
}