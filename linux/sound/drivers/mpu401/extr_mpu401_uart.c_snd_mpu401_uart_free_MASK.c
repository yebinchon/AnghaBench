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
struct snd_rawmidi {struct snd_mpu401* private_data; } ;
struct snd_mpu401 {scalar_t__ irq; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi *rmidi)
{
	struct snd_mpu401 *mpu = rmidi->private_data;
	if (mpu->irq >= 0)
		FUNC0(mpu->irq, (void *) mpu);
	FUNC2(mpu->res);
	FUNC1(mpu);
}