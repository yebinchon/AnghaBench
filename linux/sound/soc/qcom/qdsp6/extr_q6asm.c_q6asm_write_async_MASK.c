#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct audio_port_data {size_t dsp_buf; size_t num_periods; int /*<<< orphan*/  mem_map_handle; struct audio_buffer* buf; } ;
struct audio_client {int /*<<< orphan*/  adev; int /*<<< orphan*/  lock; struct audio_port_data* port; int /*<<< orphan*/  stream_id; } ;
struct audio_buffer {int /*<<< orphan*/  phys; } ;
struct asm_data_cmd_write_v2 {int buf_size; size_t seq_id; int timestamp_lsw; int timestamp_msw; int flags; int /*<<< orphan*/  mem_map_handle; int /*<<< orphan*/  buf_addr_msw; int /*<<< orphan*/  buf_addr_lsw; } ;
struct TYPE_2__ {size_t token; int /*<<< orphan*/  opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;

/* Variables and functions */
 int APR_HDR_SIZE ; 
 int /*<<< orphan*/  ASM_DATA_CMD_WRITE_V2 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NO_TIMESTAMP ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct apr_pkt*) ; 
 int /*<<< orphan*/  FUNC1 (struct apr_pkt*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audio_client*,TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct audio_client *ac, uint32_t len, uint32_t msw_ts,
		       uint32_t lsw_ts, uint32_t wflags)
{
	struct asm_data_cmd_write_v2 *write;
	struct audio_port_data *port;
	struct audio_buffer *ab;
	unsigned long flags;
	struct apr_pkt *pkt;
	int pkt_size;
	int rc = 0;
	void *p;

	pkt_size = APR_HDR_SIZE + sizeof(*write);
	p = FUNC2(pkt_size, GFP_ATOMIC);
	if (!p)
		return -ENOMEM;

	pkt = p;
	write = p + APR_HDR_SIZE;

	FUNC5(&ac->lock, flags);
	port = &ac->port[SNDRV_PCM_STREAM_PLAYBACK];
	FUNC4(ac, &pkt->hdr, pkt_size, false, ac->stream_id);

	ab = &port->buf[port->dsp_buf];
	pkt->hdr.token = port->dsp_buf;
	pkt->hdr.opcode = ASM_DATA_CMD_WRITE_V2;
	write->buf_addr_lsw = FUNC3(ab->phys);
	write->buf_addr_msw = FUNC7(ab->phys);
	write->buf_size = len;
	write->seq_id = port->dsp_buf;
	write->timestamp_lsw = lsw_ts;
	write->timestamp_msw = msw_ts;
	write->mem_map_handle =
	    ac->port[SNDRV_PCM_STREAM_PLAYBACK].mem_map_handle;

	if (wflags == NO_TIMESTAMP)
		write->flags = (wflags & 0x800000FF);
	else
		write->flags = (0x80000000 | wflags);

	port->dsp_buf++;

	if (port->dsp_buf >= port->num_periods)
		port->dsp_buf = 0;

	FUNC6(&ac->lock, flags);
	rc = FUNC0(ac->adev, pkt);
	if (rc == pkt_size)
		rc = 0;

	FUNC1(pkt);
	return rc;
}