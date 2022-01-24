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
struct snd_ca0106 {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;
struct snd_ac97 {struct snd_ca0106* private_data; } ;

/* Variables and functions */
 scalar_t__ AC97ADDRESS ; 
 scalar_t__ AC97DATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97,
				    unsigned short reg, unsigned short val)
{
	struct snd_ca0106 *emu = ac97->private_data;
	unsigned long flags;
  
	FUNC2(&emu->emu_lock, flags);
	FUNC0(reg, emu->port + AC97ADDRESS);
	FUNC1(val, emu->port + AC97DATA);
	FUNC3(&emu->emu_lock, flags);
}