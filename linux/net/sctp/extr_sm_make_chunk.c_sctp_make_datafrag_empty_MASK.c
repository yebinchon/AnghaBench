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
struct sctp_sndrcvinfo {int sinfo_flags; int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  sinfo_ppid; } ;
struct sctp_datahdr {int /*<<< orphan*/  stream; int /*<<< orphan*/  ppid; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_hdr; } ;
struct sctp_chunk {int /*<<< orphan*/  sinfo; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dp ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_DATA_UNORDERED ; 
 int SCTP_UNORDERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sctp_sndrcvinfo const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_datahdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int,struct sctp_datahdr*) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct sctp_chunk *FUNC5(const struct sctp_association *asoc,
					    const struct sctp_sndrcvinfo *sinfo,
					    int len, __u8 flags, gfp_t gfp)
{
	struct sctp_chunk *retval;
	struct sctp_datahdr dp;

	/* We assign the TSN as LATE as possible, not here when
	 * creating the chunk.
	 */
	FUNC2(&dp, 0, sizeof(dp));
	dp.ppid = sinfo->sinfo_ppid;
	dp.stream = FUNC0(sinfo->sinfo_stream);

	/* Set the flags for an unordered send.  */
	if (sinfo->sinfo_flags & SCTP_UNORDERED)
		flags |= SCTP_DATA_UNORDERED;

	retval = FUNC4(asoc, flags, sizeof(dp) + len, gfp);
	if (!retval)
		return NULL;

	retval->subh.data_hdr = FUNC3(retval, sizeof(dp), &dp);
	FUNC1(&retval->sinfo, sinfo, sizeof(struct sctp_sndrcvinfo));

	return retval;
}