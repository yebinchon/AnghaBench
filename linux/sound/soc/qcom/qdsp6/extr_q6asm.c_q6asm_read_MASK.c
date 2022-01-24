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
struct audio_port_data {size_t dsp_buf; size_t num_periods; int /*<<< orphan*/  mem_map_handle; struct audio_buffer* buf; } ;
struct audio_client {int /*<<< orphan*/  adev; int /*<<< orphan*/  lock; int /*<<< orphan*/  stream_id; struct audio_port_data* port; } ;
struct audio_buffer {int /*<<< orphan*/  size; int /*<<< orphan*/  phys; } ;
struct asm_data_cmd_read_v2 {size_t seq_id; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  mem_map_handle; int /*<<< orphan*/  buf_addr_msw; int /*<<< orphan*/  buf_addr_lsw; } ;
struct TYPE_2__ {size_t token; int /*<<< orphan*/  opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;

/* Variables and functions */
 int APR_HDR_SIZE ; 
 int /*<<< orphan*/  ASM_DATA_CMD_READ_V2 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct apr_pkt*) ; 
 int /*<<< orphan*/  FUNC1 (struct apr_pkt*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct audio_client*,TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct audio_client *ac)
{
	struct asm_data_cmd_read_v2 *read;
	struct audio_port_data *port;
	struct audio_buffer *ab;
	struct apr_pkt *pkt;
	unsigned long flags;
	int pkt_size;
	int rc = 0;
	void *p;

	pkt_size = APR_HDR_SIZE + sizeof(*read);
	p = FUNC2(pkt_size, GFP_ATOMIC);
	if (!p)
		return -ENOMEM;

	pkt = p;
	read = p + APR_HDR_SIZE;

	FUNC6(&ac->lock, flags);
	port = &ac->port[SNDRV_PCM_STREAM_CAPTURE];
	FUNC5(ac, &pkt->hdr, pkt_size, false, ac->stream_id);
	ab = &port->buf[port->dsp_buf];
	pkt->hdr.opcode = ASM_DATA_CMD_READ_V2;
	read->buf_addr_lsw = FUNC3(ab->phys);
	read->buf_addr_msw = FUNC8(ab->phys);
	read->mem_map_handle = port->mem_map_handle;

	read->buf_size = ab->size;
	read->seq_id = port->dsp_buf;
	pkt->hdr.token = port->dsp_buf;

	port->dsp_buf++;

	if (port->dsp_buf >= port->num_periods)
		port->dsp_buf = 0;

	FUNC7(&ac->lock, flags);
	rc = FUNC0(ac->adev, pkt);
	if (rc == pkt_size)
		rc = 0;
	else
		FUNC4("read op[0x%x]rc[%d]\n", pkt->hdr.opcode, rc);

	FUNC1(pkt);
	return rc;
}