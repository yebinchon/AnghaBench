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
struct perf_sample {size_t raw_size; unsigned char* raw_data; } ;
struct cf_trailer_entry {int dummy; } ;
struct cf_ctrset_entry {void* res1; void* ctr; void* set; void* def; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 size_t FUNC1 (struct cf_ctrset_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_ctrset_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

__attribute__((used)) static bool FUNC4(struct perf_sample *sample)
{
	size_t len = sample->raw_size, offset = 0;
	unsigned char *buf = sample->raw_data;
	struct cf_trailer_entry *te;
	struct cf_ctrset_entry *cep, ce;

	if (!len)
		return false;
	while (offset < len) {
		cep = (struct cf_ctrset_entry *)(buf + offset);
		ce.def = FUNC0(cep->def);
		ce.set = FUNC0(cep->set);
		ce.ctr = FUNC0(cep->ctr);
		ce.res1 = FUNC0(cep->res1);

		if (!FUNC2(&ce) || offset + FUNC1(&ce) > len) {
			/* Raw data for counter sets are always multiple of 8
			 * bytes. Prepending a 4 bytes size field to the
			 * raw data block in the sample causes the perf tool
			 * to append 4 padding bytes to make the raw data part
			 * of the sample a multiple of eight bytes again.
			 *
			 * If the last entry (trailer) is 4 bytes off the raw
			 * area data end, all is good.
			 */
			if (len - offset - sizeof(*te) == 4)
				break;
			FUNC3("Invalid counter set entry at %zd\n", offset);
			return false;
		}
		offset += FUNC1(&ce);
	}
	return true;
}