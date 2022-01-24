#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct amt_host_if_resp_header {int status; int /*<<< orphan*/  header; } ;
struct TYPE_3__ {int buf_size; } ;
struct amt_host_if {TYPE_1__ mei_cl; int /*<<< orphan*/  send_timeout; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int AMT_STATUS_HOST_IF_EMPTY_RESPONSE ; 
 int AMT_STATUS_INTERNAL_ERROR ; 
 int AMT_STATUS_SDK_RESOURCES ; 
 int AMT_STATUS_SUCCESS ; 
 int FUNC0 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,unsigned char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC5(struct amt_host_if *acmd,
			const unsigned char *command, ssize_t command_sz,
			uint8_t **read_buf, uint32_t rcmd,
			unsigned int expected_sz)
{
	uint32_t in_buf_sz;
	ssize_t out_buf_sz;
	ssize_t written;
	uint32_t status;
	struct amt_host_if_resp_header *msg_hdr;

	in_buf_sz = acmd->mei_cl.buf_size;
	*read_buf = (uint8_t *)FUNC1(sizeof(uint8_t) * in_buf_sz);
	if (*read_buf == NULL)
		return AMT_STATUS_SDK_RESOURCES;
	FUNC4(*read_buf, 0, in_buf_sz);
	msg_hdr = (struct amt_host_if_resp_header *)*read_buf;

	written = FUNC3(&acmd->mei_cl,
				command, command_sz, acmd->send_timeout);
	if (written != command_sz)
		return AMT_STATUS_INTERNAL_ERROR;

	out_buf_sz = FUNC2(&acmd->mei_cl, *read_buf, in_buf_sz, 2000);
	if (out_buf_sz <= 0)
		return AMT_STATUS_HOST_IF_EMPTY_RESPONSE;

	status = msg_hdr->status;
	if (status != AMT_STATUS_SUCCESS)
		return status;

	status = FUNC0(rcmd,
				&msg_hdr->header, out_buf_sz);
	if (status != AMT_STATUS_SUCCESS)
		return status;

	if (expected_sz && expected_sz != out_buf_sz)
		return AMT_STATUS_INTERNAL_ERROR;

	return AMT_STATUS_SUCCESS;
}