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
struct isight {scalar_t__ audio_base; int /*<<< orphan*/  unit; int /*<<< orphan*/  resources; int /*<<< orphan*/ * context; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FW_QUIET ; 
 scalar_t__ REG_AUDIO_ENABLE ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct isight *isight)
{
	__be32 value;

	if (!isight->context)
		return;

	FUNC1(isight->context);
	FUNC0(isight->context);
	isight->context = NULL;
	FUNC2(&isight->resources);
	value = 0;
	FUNC3(isight->unit, TCODE_WRITE_QUADLET_REQUEST,
			   isight->audio_base + REG_AUDIO_ENABLE,
			   &value, 4, FW_QUIET);
}