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
struct TYPE_2__ {void* length; scalar_t__ type; } ;
struct sctp_errhdr {void* length; scalar_t__ cause; int /*<<< orphan*/  crr_id; TYPE_1__ param_hdr; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_addip_param {void* length; scalar_t__ cause; int /*<<< orphan*/  crr_id; TYPE_1__ param_hdr; } ;
typedef  int /*<<< orphan*/  err_param ;
typedef  int /*<<< orphan*/  ack_param ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ SCTP_ERROR_NO_ERROR ; 
 scalar_t__ SCTP_PARAM_ERR_CAUSE ; 
 scalar_t__ SCTP_PARAM_SUCCESS_REPORT ; 
 void* FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int,struct sctp_errhdr*) ; 

__attribute__((used)) static void FUNC3(struct sctp_chunk *chunk, __be32 crr_id,
				     __be16 err_code,
				     struct sctp_addip_param *asconf_param)
{
	struct sctp_addip_param ack_param;
	struct sctp_errhdr err_param;
	int asconf_param_len = 0;
	int err_param_len = 0;
	__be16 response_type;

	if (SCTP_ERROR_NO_ERROR == err_code) {
		response_type = SCTP_PARAM_SUCCESS_REPORT;
	} else {
		response_type = SCTP_PARAM_ERR_CAUSE;
		err_param_len = sizeof(err_param);
		if (asconf_param)
			asconf_param_len =
				 FUNC1(asconf_param->param_hdr.length);
	}

	/* Add Success Indication or Error Cause Indication parameter. */
	ack_param.param_hdr.type = response_type;
	ack_param.param_hdr.length = FUNC0(sizeof(ack_param) +
					   err_param_len +
					   asconf_param_len);
	ack_param.crr_id = crr_id;
	FUNC2(chunk, sizeof(ack_param), &ack_param);

	if (SCTP_ERROR_NO_ERROR == err_code)
		return;

	/* Add Error Cause parameter. */
	err_param.cause = err_code;
	err_param.length = FUNC0(err_param_len + asconf_param_len);
	FUNC2(chunk, err_param_len, &err_param);

	/* Add the failed TLV copied from ASCONF chunk. */
	if (asconf_param)
		FUNC2(chunk, asconf_param_len, asconf_param);
}