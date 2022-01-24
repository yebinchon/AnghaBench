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
struct lola {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lola*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

int FUNC2(struct lola *chip, unsigned int nid, unsigned int verb,
		     unsigned int data, unsigned int extdata)
{
	FUNC1("codec_write NID=%x, verb=%x, data=%x, ext=%x\n",
		      nid, verb, data, extdata);
	return FUNC0(chip, nid, verb, data, extdata);
}