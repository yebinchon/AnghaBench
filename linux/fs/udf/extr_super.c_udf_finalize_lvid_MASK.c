#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int dummy; } ;
struct tag {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tagChecksum; int /*<<< orphan*/  descCRCLength; int /*<<< orphan*/  descCRC; } ;
struct logicalVolIntegrityDesc {TYPE_1__ descTag; int /*<<< orphan*/  recordingDateAndTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct timespec64) ; 

__attribute__((used)) static void FUNC6(struct logicalVolIntegrityDesc *lvid)
{
	struct timespec64 ts;

	FUNC2(&ts);
	FUNC5(&lvid->recordingDateAndTime, ts);
	lvid->descTag.descCRC = FUNC0(
		FUNC1(0, (char *)lvid + sizeof(struct tag),
			FUNC3(lvid->descTag.descCRCLength)));
	lvid->descTag.tagChecksum = FUNC4(&lvid->descTag);
}