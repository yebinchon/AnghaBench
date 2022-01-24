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
typedef  void* u8 ;
struct nfc_llcp_sdp_tlv {int /*<<< orphan*/  node; void* sap; void* tid; int /*<<< orphan*/ * tlv; int /*<<< orphan*/  tlv_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LLCP_TLV_SDRES ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_llcp_sdp_tlv*) ; 
 struct nfc_llcp_sdp_tlv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 

struct nfc_llcp_sdp_tlv *FUNC4(u8 tid, u8 sap)
{
	struct nfc_llcp_sdp_tlv *sdres;
	u8 value[2];

	sdres = FUNC2(sizeof(struct nfc_llcp_sdp_tlv), GFP_KERNEL);
	if (sdres == NULL)
		return NULL;

	value[0] = tid;
	value[1] = sap;

	sdres->tlv = FUNC3(LLCP_TLV_SDRES, value, 2,
					&sdres->tlv_len);
	if (sdres->tlv == NULL) {
		FUNC1(sdres);
		return NULL;
	}

	sdres->tid = tid;
	sdres->sap = sap;

	FUNC0(&sdres->node);

	return sdres;
}