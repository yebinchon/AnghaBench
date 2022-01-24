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
struct nfc_llcp_sdp_tlv {size_t tlv_len; int* tlv; int* uri; int /*<<< orphan*/  node; int /*<<< orphan*/  time; void* tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LLCP_TLV_SDREQ ; 
 int U8_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_llcp_sdp_tlv*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

struct nfc_llcp_sdp_tlv *FUNC6(u8 tid, char *uri,
						  size_t uri_len)
{
	struct nfc_llcp_sdp_tlv *sdreq;

	FUNC5("uri: %s, len: %zu\n", uri, uri_len);

	/* sdreq->tlv_len is u8, takes uri_len, + 3 for header, + 1 for NULL */
	if (FUNC1(uri_len > U8_MAX - 4))
		return NULL;

	sdreq = FUNC3(sizeof(struct nfc_llcp_sdp_tlv), GFP_KERNEL);
	if (sdreq == NULL)
		return NULL;

	sdreq->tlv_len = uri_len + 3;

	if (uri[uri_len - 1] == 0)
		sdreq->tlv_len--;

	sdreq->tlv = FUNC3(sdreq->tlv_len + 1, GFP_KERNEL);
	if (sdreq->tlv == NULL) {
		FUNC2(sdreq);
		return NULL;
	}

	sdreq->tlv[0] = LLCP_TLV_SDREQ;
	sdreq->tlv[1] = sdreq->tlv_len - 2;
	sdreq->tlv[2] = tid;

	sdreq->tid = tid;
	sdreq->uri = sdreq->tlv + 3;
	FUNC4(sdreq->uri, uri, uri_len);

	sdreq->time = jiffies;

	FUNC0(&sdreq->node);

	return sdreq;
}