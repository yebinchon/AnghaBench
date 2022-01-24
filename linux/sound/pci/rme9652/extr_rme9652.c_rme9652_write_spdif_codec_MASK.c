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
struct snd_rme9652 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_SPDIF_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*,int const) ; 

__attribute__((used)) static void FUNC2 (struct snd_rme9652 *rme9652, const int address, const int data)
{
	FUNC0 (rme9652, RME9652_SPDIF_SELECT, 1);
	FUNC1 (rme9652, 0x20);
	FUNC1 (rme9652, address);
	FUNC1 (rme9652, data);
	FUNC0 (rme9652, RME9652_SPDIF_SELECT, 0);
}