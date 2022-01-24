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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tag {int /*<<< orphan*/  tagLocation; void* tagSerialNum; void* descVersion; void* tagIdent; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(char *data, uint16_t ident, uint16_t version, uint16_t snum,
		 uint32_t loc, int length)
{
	struct tag *tptr = (struct tag *)data;
	tptr->tagIdent = FUNC0(ident);
	tptr->descVersion = FUNC0(version);
	tptr->tagSerialNum = FUNC0(snum);
	tptr->tagLocation = FUNC1(loc);
	FUNC2(data, length);
}