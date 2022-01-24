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
struct tag {int /*<<< orphan*/  tagChecksum; void* descCRC; void* descCRCLength; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tag*) ; 

void FUNC3(char *data, int length)
{
	struct tag *tptr = (struct tag *)data;
	length -= sizeof(struct tag);

	tptr->descCRCLength = FUNC0(length);
	tptr->descCRC = FUNC0(FUNC1(0, data + sizeof(struct tag), length));
	tptr->tagChecksum = FUNC2(tptr);
}