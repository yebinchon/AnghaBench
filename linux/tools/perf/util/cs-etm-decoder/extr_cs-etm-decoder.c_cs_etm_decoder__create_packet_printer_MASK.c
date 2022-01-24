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
struct cs_etm_decoder {int /*<<< orphan*/  dcd_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCSD_CREATE_FLG_PACKET_PROC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cs_etm_decoder *decoder,
						 const char *decoder_name,
						 void *trace_config)
{
	u8 csid;

	if (FUNC0(decoder->dcd_tree, decoder_name,
				   OCSD_CREATE_FLG_PACKET_PROC,
				   trace_config, &csid))
		return -1;

	if (FUNC1(decoder->dcd_tree, csid, 0))
		return -1;

	return 0;
}