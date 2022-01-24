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
struct snd_ymfpci_voice {int dummy; } ;
struct snd_ymfpci {int /*<<< orphan*/  voice_lock; } ;
typedef  enum snd_ymfpci_voice_type { ____Placeholder_snd_ymfpci_voice_type } snd_ymfpci_voice_type ;

/* Variables and functions */
 int EINVAL ; 
 int YMFPCI_PCM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct snd_ymfpci*,int,int,struct snd_ymfpci_voice**) ; 

__attribute__((used)) static int FUNC4(struct snd_ymfpci *chip,
				  enum snd_ymfpci_voice_type type, int pair,
				  struct snd_ymfpci_voice **rvoice)
{
	unsigned long flags;
	int result;
	
	if (FUNC0(!rvoice))
		return -EINVAL;
	if (FUNC0(pair && type != YMFPCI_PCM))
		return -EINVAL;
	
	FUNC1(&chip->voice_lock, flags);
	for (;;) {
		result = FUNC3(chip, type, pair, rvoice);
		if (result == 0 || type != YMFPCI_PCM)
			break;
		/* TODO: synth/midi voice deallocation */
		break;
	}
	FUNC2(&chip->voice_lock, flags);	
	return result;		
}