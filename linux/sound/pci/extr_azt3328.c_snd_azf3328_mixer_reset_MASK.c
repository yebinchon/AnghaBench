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
struct snd_azf3328 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDX_MIXER_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_azf3328 const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_azf3328 const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(const struct snd_azf3328 *chip)
{
	/* reset (close) mixer:
	 * first mute master volume, then reset
	 */
	FUNC0(chip, 1);
	FUNC1(chip, IDX_MIXER_RESET, 0x0000);
}