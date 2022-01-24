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
struct pstore_record {int count; int reason; unsigned int part; char* buf; int compressed; int size; int /*<<< orphan*/  type; } ;
struct kmsg_dumper {int dummy; } ;
typedef  enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;
struct TYPE_3__ {char* buf; size_t bufsize; int (* write ) (struct pstore_record*) ;int /*<<< orphan*/  buf_lock; } ;

/* Variables and functions */
 int KMSG_DUMP_OOPS ; 
 int /*<<< orphan*/  PSTORE_TYPE_DMESG ; 
 char* big_oops_buf ; 
 size_t big_oops_buf_sz ; 
 int FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 unsigned long kmsg_bytes ; 
 int /*<<< orphan*/  FUNC5 (struct kmsg_dumper*,int,char*,size_t,size_t*) ; 
 int oopscount ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_1__* psinfo ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (char*,char*,int,size_t) ; 
 scalar_t__ FUNC9 () ; 
 int pstore_new_entry ; 
 int /*<<< orphan*/  FUNC10 (struct pstore_record*,TYPE_1__*) ; 
 int FUNC11 (char*,size_t,char*,char const*,int,unsigned int) ; 
 int FUNC12 (struct pstore_record*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct kmsg_dumper *dumper,
			enum kmsg_dump_reason reason)
{
	unsigned long	total = 0;
	const char	*why;
	unsigned int	part = 1;
	int		ret;

	why = FUNC3(reason);

	if (FUNC2(&psinfo->buf_lock)) {
		/* Failed to acquire lock: give up if we cannot wait. */
		if (FUNC7(reason)) {
			FUNC6("dump skipped in %s path: may corrupt error record\n",
				FUNC4() ? "NMI" : why);
			return;
		}
		if (FUNC1(&psinfo->buf_lock)) {
			FUNC6("could not grab semaphore?!\n");
			return;
		}
	}

	oopscount++;
	while (total < kmsg_bytes) {
		char *dst;
		size_t dst_size;
		int header_size;
		int zipped_len = -1;
		size_t dump_size;
		struct pstore_record record;

		FUNC10(&record, psinfo);
		record.type = PSTORE_TYPE_DMESG;
		record.count = oopscount;
		record.reason = reason;
		record.part = part;
		record.buf = psinfo->buf;

		if (big_oops_buf) {
			dst = big_oops_buf;
			dst_size = big_oops_buf_sz;
		} else {
			dst = psinfo->buf;
			dst_size = psinfo->bufsize;
		}

		/* Write dump header. */
		header_size = FUNC11(dst, dst_size, "%s#%d Part%u\n", why,
				 oopscount, part);
		dst_size -= header_size;

		/* Write dump contents. */
		if (!FUNC5(dumper, true, dst + header_size,
					  dst_size, &dump_size))
			break;

		if (big_oops_buf) {
			zipped_len = FUNC8(dst, psinfo->buf,
						header_size + dump_size,
						psinfo->bufsize);

			if (zipped_len > 0) {
				record.compressed = true;
				record.size = zipped_len;
			} else {
				record.size = FUNC0(header_size,
								  dump_size);
			}
		} else {
			record.size = header_size + dump_size;
		}

		ret = psinfo->write(&record);
		if (ret == 0 && reason == KMSG_DUMP_OOPS && FUNC9())
			pstore_new_entry = 1;

		total += record.size;
		part++;
	}

	FUNC13(&psinfo->buf_lock);
}