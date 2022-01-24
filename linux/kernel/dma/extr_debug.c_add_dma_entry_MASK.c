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
struct hash_bucket {int dummy; } ;
struct dma_debug_entry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct dma_debug_entry*) ; 
 struct hash_bucket* FUNC1 (struct dma_debug_entry*,unsigned long*) ; 
 int global_disable ; 
 int /*<<< orphan*/  FUNC2 (struct hash_bucket*,struct dma_debug_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_bucket*,unsigned long*) ; 

__attribute__((used)) static void FUNC5(struct dma_debug_entry *entry)
{
	struct hash_bucket *bucket;
	unsigned long flags;
	int rc;

	bucket = FUNC1(entry, &flags);
	FUNC2(bucket, entry);
	FUNC4(bucket, &flags);

	rc = FUNC0(entry);
	if (rc == -ENOMEM) {
		FUNC3("cacheline tracking ENOMEM, dma-debug disabled\n");
		global_disable = true;
	}

	/* TODO: report -EEXIST errors here as overlapping mappings are
	 * not supported by the DMA API
	 */
}