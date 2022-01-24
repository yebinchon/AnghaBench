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
typedef  scalar_t__ u32 ;
struct snd_efw_transaction {int /*<<< orphan*/  seqnum; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 unsigned long long MEMORY_SPACE_EFW_RESPONSE ; 
 int RCODE_ADDRESS_ERROR ; 
 int RCODE_DATA_ERROR ; 
 int RCODE_TYPE_ERROR ; 
 scalar_t__ SND_EFW_TRANSACTION_USER_SEQNUM_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*,struct fw_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,int,int,void*,size_t,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_card*,int,int,void*,size_t,int*) ; 
 scalar_t__ snd_efw_resp_buf_debug ; 

__attribute__((used)) static void
FUNC4(struct fw_card *card, struct fw_request *request,
	     int tcode, int destination, int source,
	     int generation, unsigned long long offset,
	     void *data, size_t length, void *callback_data)
{
	int rcode, dummy;
	u32 seqnum;

	rcode = RCODE_TYPE_ERROR;
	if (length < sizeof(struct snd_efw_transaction)) {
		rcode = RCODE_DATA_ERROR;
		goto end;
	} else if (offset != MEMORY_SPACE_EFW_RESPONSE) {
		rcode = RCODE_ADDRESS_ERROR;
		goto end;
	}

	seqnum = FUNC0(((struct snd_efw_transaction *)data)->seqnum);
	if (seqnum > SND_EFW_TRANSACTION_USER_SEQNUM_MAX + 1) {
		FUNC2(card, generation, source,
				       data, length, &rcode, seqnum);
		if (snd_efw_resp_buf_debug)
			FUNC3(card, generation, source,
					     data, length, &dummy);
	} else {
		FUNC3(card, generation, source,
				     data, length, &rcode);
	}
end:
	FUNC1(card, request, rcode);
}