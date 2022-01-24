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
typedef  void* u8 ;
struct tea6330t {int equalizer; int fader; int* regs; int max_bass; int max_treble; int bass; int treble; int mleft; int mright; struct snd_i2c_bus* bus; struct snd_i2c_device* device; } ;
struct snd_kcontrol_new {int /*<<< orphan*/  name; } ;
struct snd_i2c_device {int /*<<< orphan*/  private_free; struct tea6330t* private_data; } ;
struct snd_i2c_bus {int dummy; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol_new*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TEA6330T_ADDR ; 
 int TEA6330T_EQN ; 
 size_t TEA6330T_SADDR_AUDIO_SWITCH ; 
 size_t TEA6330T_SADDR_BASS ; 
 size_t TEA6330T_SADDR_FADER ; 
 size_t TEA6330T_SADDR_TREBLE ; 
 unsigned char TEA6330T_SADDR_VOLUME_LEFT ; 
 int /*<<< orphan*/  FUNC1 (struct tea6330t*) ; 
 struct tea6330t* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_card*,char*) ; 
 int FUNC4 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_kcontrol_new*,struct tea6330t*) ; 
 int FUNC6 (struct snd_i2c_bus*,char*,int /*<<< orphan*/ ,struct snd_i2c_device**) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_i2c_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_i2c_bus*) ; 
 int FUNC9 (struct snd_i2c_device*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_i2c_bus*) ; 
 int /*<<< orphan*/  snd_tea6330_free ; 
 struct snd_kcontrol_new* snd_tea6330t_controls ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

int FUNC13(struct snd_card *card,
			      struct snd_i2c_bus *bus,
			      int equalizer, int fader)
{
	struct snd_i2c_device *device;
	struct tea6330t *tea;
	struct snd_kcontrol_new *knew;
	unsigned int idx;
	int err = -ENOMEM;
	u8 default_treble, default_bass;
	unsigned char bytes[7];

	tea = FUNC2(sizeof(*tea), GFP_KERNEL);
	if (tea == NULL)
		return -ENOMEM;
	if ((err = FUNC6(bus, "TEA6330T", TEA6330T_ADDR, &device)) < 0) {
		FUNC1(tea);
		return err;
	}
	tea->device = device;
	tea->bus = bus;
	tea->equalizer = equalizer;
	tea->fader = fader;
	device->private_data = tea;
	device->private_free = snd_tea6330_free;

	FUNC8(bus);

	/* turn fader off and handle equalizer */
	tea->regs[TEA6330T_SADDR_FADER] = 0x3f;
	tea->regs[TEA6330T_SADDR_AUDIO_SWITCH] = equalizer ? 0 : TEA6330T_EQN;
	/* initialize mixer */
	if (!tea->equalizer) {
		tea->max_bass = 9;
		tea->max_treble = 8;
		default_bass = 3 + 4;
		tea->bass = 4;
		default_treble = 3 + 4;
		tea->treble = 4;
	} else {
		tea->max_bass = 5;
		tea->max_treble = 0;
		default_bass = 7 + 4;
		tea->bass = 4;
		default_treble = 3;
		tea->treble = 0;
	}
	tea->mleft = tea->mright = 0x14;
	tea->regs[TEA6330T_SADDR_BASS] = default_bass;
	tea->regs[TEA6330T_SADDR_TREBLE] = default_treble;

	/* compose I2C message and put the hardware to initial state */
	bytes[0] = TEA6330T_SADDR_VOLUME_LEFT;
	for (idx = 0; idx < 6; idx++)
		bytes[idx+1] = tea->regs[idx];
	if ((err = FUNC9(device, bytes, 7)) < 0)
		goto __error;

	FUNC11(card->mixername, ",TEA6330T");
	if ((err = FUNC3(card, "TEA6330T")) < 0)
		goto __error;

	for (idx = 0; idx < FUNC0(snd_tea6330t_controls); idx++) {
		knew = &snd_tea6330t_controls[idx];
		if (tea->treble == 0 && !FUNC12(knew->name, "Tone Control - Treble"))
			continue;
		if ((err = FUNC4(card, FUNC5(knew, tea))) < 0)
			goto __error;
	}

	FUNC10(bus);
	return 0;
	
      __error:
      	FUNC10(bus);
      	FUNC7(device);
      	return err;
}