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
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
struct sctp_random_param {TYPE_1__ param_hdr; } ;
struct sctp_hmac_algo_param {TYPE_1__ param_hdr; } ;
struct sctp_chunks_param {TYPE_1__ param_hdr; } ;
struct sctp_auth_bytes {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct sctp_random_param*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct sctp_auth_bytes* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_auth_bytes *FUNC3(
			struct sctp_random_param *random,
			struct sctp_chunks_param *chunks,
			struct sctp_hmac_algo_param *hmacs,
			gfp_t gfp)
{
	struct sctp_auth_bytes *new;
	__u32	len;
	__u32	offset = 0;
	__u16	random_len, hmacs_len, chunks_len = 0;

	random_len = FUNC1(random->param_hdr.length);
	hmacs_len = FUNC1(hmacs->param_hdr.length);
	if (chunks)
		chunks_len = FUNC1(chunks->param_hdr.length);

	len = random_len + hmacs_len + chunks_len;

	new = FUNC2(len, gfp);
	if (!new)
		return NULL;

	FUNC0(new->data, random, random_len);
	offset += random_len;

	if (chunks) {
		FUNC0(new->data + offset, chunks, chunks_len);
		offset += chunks_len;
	}

	FUNC0(new->data + offset, hmacs, hmacs_len);

	return new;
}