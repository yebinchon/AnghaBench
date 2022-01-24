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
typedef  int /*<<< orphan*/  u_int32_t ;
struct xt_sctp_info {int chunk_match_type; int flag_count; int /*<<< orphan*/  chunkmap; struct xt_sctp_flag_info* flag_info; } ;
struct xt_sctp_flag_info {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct sctp_chunkhdr {scalar_t__ length; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  _sch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SCTP_CHUNK_MATCH_ALL 130 
#define  SCTP_CHUNK_MATCH_ANY 129 
#define  SCTP_CHUNK_MATCH_ONLY 128 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct xt_sctp_flag_info const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 struct sctp_chunkhdr* FUNC9 (struct sk_buff const*,unsigned int,int,struct sctp_chunkhdr*) ; 

__attribute__((used)) static inline bool
FUNC10(const struct sk_buff *skb,
	     unsigned int offset,
	     const struct xt_sctp_info *info,
	     bool *hotdrop)
{
	u_int32_t chunkmapcopy[256 / sizeof (u_int32_t)];
	const struct sctp_chunkhdr *sch;
	struct sctp_chunkhdr _sch;
	int chunk_match_type = info->chunk_match_type;
	const struct xt_sctp_flag_info *flag_info = info->flag_info;
	int flag_count = info->flag_count;

#ifdef DEBUG
	int i = 0;
#endif

	if (chunk_match_type == SCTP_CHUNK_MATCH_ALL)
		FUNC1(chunkmapcopy, info->chunkmap);

	do {
		sch = FUNC9(skb, offset, sizeof(_sch), &_sch);
		if (sch == NULL || sch->length == 0) {
			FUNC8("Dropping invalid SCTP packet.\n");
			*hotdrop = true;
			return false;
		}
#ifdef DEBUG
		pr_debug("Chunk num: %d\toffset: %d\ttype: %d\tlength: %d"
			 "\tflags: %x\n",
			 ++i, offset, sch->type, htons(sch->length),
			 sch->flags);
#endif
		offset += FUNC4(FUNC7(sch->length));

		FUNC8("skb->len: %d\toffset: %d\n", skb->len, offset);

		if (FUNC3(info->chunkmap, sch->type)) {
			switch (chunk_match_type) {
			case SCTP_CHUNK_MATCH_ANY:
				if (FUNC6(flag_info, flag_count,
					sch->type, sch->flags)) {
					return true;
				}
				break;

			case SCTP_CHUNK_MATCH_ALL:
				if (FUNC6(flag_info, flag_count,
				    sch->type, sch->flags))
					FUNC0(chunkmapcopy, sch->type);
				break;

			case SCTP_CHUNK_MATCH_ONLY:
				if (!FUNC6(flag_info, flag_count,
				    sch->type, sch->flags))
					return false;
				break;
			}
		} else {
			switch (chunk_match_type) {
			case SCTP_CHUNK_MATCH_ONLY:
				return false;
			}
		}
	} while (offset < skb->len);

	switch (chunk_match_type) {
	case SCTP_CHUNK_MATCH_ALL:
		return FUNC2(chunkmapcopy);
	case SCTP_CHUNK_MATCH_ANY:
		return false;
	case SCTP_CHUNK_MATCH_ONLY:
		return true;
	}

	/* This will never be reached, but required to stop compiler whine */
	return false;
}