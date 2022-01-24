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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_component {int dummy; } ;
struct ec_param_codec_i2s {int dummy; } ;
struct cros_ec_device {int dummy; } ;
struct cros_ec_command {int outsize; int /*<<< orphan*/  data; scalar_t__ insize; int /*<<< orphan*/  command; scalar_t__ version; } ;
struct cros_ec_codec_data {struct cros_ec_device* ec_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_CODEC_I2S ; 
 int FUNC0 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ec_param_codec_i2s*,int) ; 
 struct cros_ec_codec_data* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
			      struct ec_param_codec_i2s *param)
{
	struct cros_ec_codec_data *codec_data =
		FUNC2(component);
	struct cros_ec_device *ec_device = codec_data->ec_device;
	u8 buffer[sizeof(struct cros_ec_command) +
		  sizeof(struct ec_param_codec_i2s)];
	struct cros_ec_command *msg = (struct cros_ec_command *)&buffer;

	msg->version = 0;
	msg->command = EC_CMD_CODEC_I2S;
	msg->outsize = sizeof(struct ec_param_codec_i2s);
	msg->insize = 0;

	FUNC1(msg->data, param, msg->outsize);

	return FUNC0(ec_device, msg);
}