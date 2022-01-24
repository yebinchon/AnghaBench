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
struct amd7930_map {void* gr; void* ger; void* stgr; void* gx; } ;
struct snd_amd7930 {size_t rgain; size_t mgain; int pgain; struct amd7930_map map; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_amd7930*) ; 
 void** ger_coeff ; 
 void** gx_coeff ; 

__attribute__((used)) static void FUNC2(struct snd_amd7930 *amd)
{
	struct amd7930_map *map = &amd->map;
	int level;

	map->gx = gx_coeff[amd->rgain];
	map->stgr = gx_coeff[amd->mgain];
	level = (amd->pgain * (256 + FUNC0(ger_coeff))) >> 8;
	if (level >= 256) {
		map->ger = ger_coeff[level - 256];
		map->gr = gx_coeff[255];
	} else {
		map->ger = ger_coeff[0];
		map->gr = gx_coeff[level];
	}
	FUNC1(amd);
}