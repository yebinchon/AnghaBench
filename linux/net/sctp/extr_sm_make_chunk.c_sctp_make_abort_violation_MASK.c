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
struct sctp_paramhdr {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  phdr ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ERROR_PROTO_VIOLATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,size_t const,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int,struct sctp_paramhdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int /*<<< orphan*/ ,size_t const) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,struct sctp_chunk const*,int) ; 

struct sctp_chunk *FUNC5(
					const struct sctp_association *asoc,
					const struct sctp_chunk *chunk,
					const __u8 *payload,
					const size_t paylen)
{
	struct sctp_chunk  *retval;
	struct sctp_paramhdr phdr;

	retval = FUNC4(asoc, chunk, sizeof(struct sctp_errhdr) +
					      paylen + sizeof(phdr));
	if (!retval)
		goto end;

	FUNC3(retval, SCTP_ERROR_PROTO_VIOLATION, paylen +
							    sizeof(phdr));

	phdr.type = FUNC0(chunk->chunk_hdr->type);
	phdr.length = chunk->chunk_hdr->length;
	FUNC1(retval, paylen, payload);
	FUNC2(retval, sizeof(phdr), &phdr);

end:
	return retval;
}