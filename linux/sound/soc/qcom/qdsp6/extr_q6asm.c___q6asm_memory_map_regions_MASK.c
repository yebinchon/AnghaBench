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
typedef  int uint32_t ;
struct q6asm {int dummy; } ;
struct avs_shared_map_region_payload {int mem_size_bytes; int /*<<< orphan*/  shm_addr_msw; int /*<<< orphan*/  shm_addr_lsw; } ;
struct avs_cmd_shared_mem_map_regions {int num_regions; int property_flag; int /*<<< orphan*/  mem_pool_id; } ;
struct audio_port_data {struct audio_buffer* buf; } ;
struct audio_client {int session; int /*<<< orphan*/  lock; struct audio_port_data* port; TYPE_1__* dev; } ;
struct audio_buffer {int /*<<< orphan*/  phys; } ;
struct TYPE_4__ {int pkt_size; int token; int /*<<< orphan*/  opcode; scalar_t__ dest_port; scalar_t__ src_port; int /*<<< orphan*/  hdr_field; } ;
struct apr_pkt {TYPE_2__ hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADSP_MEMORY_MAP_SHMEM8_4K_POOL ; 
 int FUNC0 (int,int) ; 
 int APR_HDR_SIZE ; 
 int /*<<< orphan*/  APR_SEQ_CMD_HDR_FIELD ; 
 int /*<<< orphan*/  ASM_CMDRSP_SHARED_MEM_MAP_REGIONS ; 
 int /*<<< orphan*/  ASM_CMD_SHARED_MEM_MAP_REGIONS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct q6asm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct apr_pkt*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct q6asm*,struct audio_client*,struct apr_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct audio_client *ac, int dir,
				      size_t period_sz, unsigned int periods,
				      bool is_contiguous)
{
	struct avs_cmd_shared_mem_map_regions *cmd = NULL;
	struct avs_shared_map_region_payload *mregions = NULL;
	struct q6asm *a = FUNC1(ac->dev->parent);
	struct audio_port_data *port = NULL;
	struct audio_buffer *ab = NULL;
	struct apr_pkt *pkt;
	void *p;
	unsigned long flags;
	uint32_t num_regions, buf_sz;
	int rc, i, pkt_size;

	if (is_contiguous) {
		num_regions = 1;
		buf_sz = period_sz * periods;
	} else {
		buf_sz = period_sz;
		num_regions = periods;
	}

	/* DSP expects size should be aligned to 4K */
	buf_sz = FUNC0(buf_sz, 4096);

	pkt_size = APR_HDR_SIZE + sizeof(*cmd) +
		   (sizeof(*mregions) * num_regions);

	p = FUNC3(pkt_size, GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	pkt = p;
	cmd = p + APR_HDR_SIZE;
	mregions = p + APR_HDR_SIZE +  sizeof(*cmd);

	pkt->hdr.hdr_field = APR_SEQ_CMD_HDR_FIELD;
	pkt->hdr.src_port = 0;
	pkt->hdr.dest_port = 0;
	pkt->hdr.pkt_size = pkt_size;
	pkt->hdr.token = ((ac->session << 8) | dir);
	pkt->hdr.opcode = ASM_CMD_SHARED_MEM_MAP_REGIONS;

	cmd->mem_pool_id = ADSP_MEMORY_MAP_SHMEM8_4K_POOL;
	cmd->num_regions = num_regions;
	cmd->property_flag = 0x00;

	FUNC6(&ac->lock, flags);
	port = &ac->port[dir];

	for (i = 0; i < num_regions; i++) {
		ab = &port->buf[i];
		mregions->shm_addr_lsw = FUNC4(ab->phys);
		mregions->shm_addr_msw = FUNC8(ab->phys);
		mregions->mem_size_bytes = buf_sz;
		++mregions;
	}
	FUNC7(&ac->lock, flags);

	rc = FUNC5(a, ac, pkt,
					ASM_CMDRSP_SHARED_MEM_MAP_REGIONS);

	FUNC2(pkt);

	return rc;
}