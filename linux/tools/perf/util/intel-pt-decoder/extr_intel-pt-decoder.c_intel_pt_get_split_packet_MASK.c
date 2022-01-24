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
struct intel_pt_decoder {unsigned char* temp_buf; size_t len; unsigned char* buf; size_t pos; unsigned char* next_buf; size_t next_len; int /*<<< orphan*/  pkt_ctx; int /*<<< orphan*/  packet; int /*<<< orphan*/  prev_pkt_ctx; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t INTEL_PT_PKT_MAX_SZ ; 
 int FUNC0 (struct intel_pt_decoder*) ; 
 int FUNC1 (struct intel_pt_decoder*,int) ; 
 int FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC4(struct intel_pt_decoder *decoder)
{
	unsigned char *buf = decoder->temp_buf;
	size_t old_len, len, n;
	int ret;

	old_len = decoder->len;
	len = decoder->len;
	FUNC3(buf, decoder->buf, len);

	ret = FUNC1(decoder, false);
	if (ret) {
		decoder->pos += old_len;
		return ret < 0 ? ret : -EINVAL;
	}

	n = INTEL_PT_PKT_MAX_SZ - len;
	if (n > decoder->len)
		n = decoder->len;
	FUNC3(buf + len, decoder->buf, n);
	len += n;

	decoder->prev_pkt_ctx = decoder->pkt_ctx;
	ret = FUNC2(buf, len, &decoder->packet, &decoder->pkt_ctx);
	if (ret < (int)old_len) {
		decoder->next_buf = decoder->buf;
		decoder->next_len = decoder->len;
		decoder->buf = buf;
		decoder->len = old_len;
		return FUNC0(decoder);
	}

	decoder->next_buf = decoder->buf + (ret - old_len);
	decoder->next_len = decoder->len - (ret - old_len);

	decoder->buf = buf;
	decoder->len = ret;

	return ret;
}