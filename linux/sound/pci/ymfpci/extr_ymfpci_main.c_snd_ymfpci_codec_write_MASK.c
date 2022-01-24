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
typedef  int u32 ;
typedef  int u16 ;
struct snd_ymfpci {int dummy; } ;
struct snd_ac97 {struct snd_ymfpci* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_AC97CMDDATA ; 
 int YDSXG_AC97WRITECMD ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97, u16 reg, u16 val)
{
	struct snd_ymfpci *chip = ac97->private_data;
	u32 cmd;
	
	FUNC0(chip, 0);
	cmd = ((YDSXG_AC97WRITECMD | reg) << 16) | val;
	FUNC1(chip, YDSXGR_AC97CMDDATA, cmd);
}