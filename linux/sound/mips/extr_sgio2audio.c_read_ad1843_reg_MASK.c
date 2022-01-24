#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_sgio2audio {int /*<<< orphan*/  ad1843_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  codec_read; int /*<<< orphan*/  codec_control; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
struct TYPE_6__ {TYPE_2__ perif; } ;

/* Variables and functions */
 int CODEC_CONTROL_ADDRESS_SHIFT ; 
 int CODEC_CONTROL_READ ; 
 TYPE_3__* mace ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *priv, int reg)
{
	struct snd_sgio2audio *chip = priv;
	int val;
	unsigned long flags;

	FUNC1(&chip->ad1843_lock, flags);

	FUNC5((reg << CODEC_CONTROL_ADDRESS_SHIFT) |
	       CODEC_CONTROL_READ, &mace->perif.audio.codec_control);
	FUNC4();
	val = FUNC0(&mace->perif.audio.codec_control); /* flush bus */
	FUNC3(200);

	val = FUNC0(&mace->perif.audio.codec_read);

	FUNC2(&chip->ad1843_lock, flags);
	return val;
}