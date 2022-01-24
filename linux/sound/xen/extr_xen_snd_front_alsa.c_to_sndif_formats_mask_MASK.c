#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  sndif; int /*<<< orphan*/  alsa; } ;

/* Variables and functions */
 TYPE_1__* ALSA_SNDIF_FORMATS ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(u64 alsa_formats)
{
	u64 mask;
	int i;

	mask = 0;
	for (i = 0; i < FUNC0(ALSA_SNDIF_FORMATS); i++)
		if (FUNC2(ALSA_SNDIF_FORMATS[i].alsa) & alsa_formats)
			mask |= FUNC1(ALSA_SNDIF_FORMATS[i].sndif);

	return mask;
}