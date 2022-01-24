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
struct snd_soc_dai {size_t id; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adav80x {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int ADAV80X_CAPTRUE_WORD_LEN18 ; 
 unsigned int ADAV80X_CAPTURE_WORD_LEN16 ; 
 unsigned int ADAV80X_CAPTURE_WORD_LEN20 ; 
 unsigned int ADAV80X_CAPTURE_WORD_LEN24 ; 
 int /*<<< orphan*/  ADAV80X_CAPTURE_WORD_LEN_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/ ** adav80x_port_ctrl_regs ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct adav80x* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
		struct snd_soc_dai *dai, struct snd_pcm_hw_params *params)
{
	struct adav80x *adav80x = FUNC2(component);
	unsigned int val;

	switch (FUNC0(params)) {
	case 16:
		val = ADAV80X_CAPTURE_WORD_LEN16;
		break;
	case 18:
		val = ADAV80X_CAPTRUE_WORD_LEN18;
		break;
	case 20:
		val = ADAV80X_CAPTURE_WORD_LEN20;
		break;
	case 24:
		val = ADAV80X_CAPTURE_WORD_LEN24;
		break;
	default:
		return -EINVAL;
	}

	FUNC1(adav80x->regmap, adav80x_port_ctrl_regs[dai->id][0],
		ADAV80X_CAPTURE_WORD_LEN_MASK, val);

	return 0;
}