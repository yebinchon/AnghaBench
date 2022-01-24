#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ bf_sourcech_cfg; scalar_t__ bf_sourcech_ctrl; scalar_t__ i2s_cfg; scalar_t__ i2s_stream_cfg; } ;
struct cygnus_aio_port {int port_type; int /*<<< orphan*/  portnum; TYPE_2__* cygaud; TYPE_1__ regs; int /*<<< orphan*/  streams_on; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; scalar_t__ audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BF_SRC_CFGX_SFIFO_ENA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  I2S_OUT_CFGX_CLK_ENA ; 
 int /*<<< orphan*/  I2S_OUT_CFGX_DATA_ENABLE ; 
 int /*<<< orphan*/  I2S_OUT_STREAM_ENA ; 
 int /*<<< orphan*/  PLAYBACK_STREAM_MASK ; 
#define  PORT_SPDIF 129 
#define  PORT_TDM 128 
 scalar_t__ SPDIF_FORMAT_CFG_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct cygnus_aio_port *aio)
{
	u32 value;
	int status = 0;

	switch (aio->port_type) {
	case PORT_TDM:
		value = FUNC2(aio->cygaud->audio + aio->regs.i2s_stream_cfg);
		value |= FUNC0(I2S_OUT_STREAM_ENA);
		FUNC3(value, aio->cygaud->audio + aio->regs.i2s_stream_cfg);

		FUNC3(1, aio->cygaud->audio + aio->regs.bf_sourcech_ctrl);

		value = FUNC2(aio->cygaud->audio + aio->regs.i2s_cfg);
		value |= FUNC0(I2S_OUT_CFGX_CLK_ENA);
		value |= FUNC0(I2S_OUT_CFGX_DATA_ENABLE);
		FUNC3(value, aio->cygaud->audio + aio->regs.i2s_cfg);

		value = FUNC2(aio->cygaud->audio + aio->regs.bf_sourcech_cfg);
		value |= FUNC0(BF_SRC_CFGX_SFIFO_ENA);
		FUNC3(value, aio->cygaud->audio + aio->regs.bf_sourcech_cfg);

		aio->streams_on |= PLAYBACK_STREAM_MASK;
		break;
	case PORT_SPDIF:
		value = FUNC2(aio->cygaud->audio + SPDIF_FORMAT_CFG_OFFSET);
		value |= 0x3;
		FUNC3(value, aio->cygaud->audio + SPDIF_FORMAT_CFG_OFFSET);

		FUNC3(1, aio->cygaud->audio + aio->regs.bf_sourcech_ctrl);

		value = FUNC2(aio->cygaud->audio + aio->regs.bf_sourcech_cfg);
		value |= FUNC0(BF_SRC_CFGX_SFIFO_ENA);
		FUNC3(value, aio->cygaud->audio + aio->regs.bf_sourcech_cfg);
		break;
	default:
		FUNC1(aio->cygaud->dev,
			"Port not supported %d\n", aio->portnum);
		status = -EINVAL;
	}

	return status;
}