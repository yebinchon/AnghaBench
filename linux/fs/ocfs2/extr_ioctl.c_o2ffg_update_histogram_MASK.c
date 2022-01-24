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
typedef  size_t u32 ;
struct ocfs2_info_free_chunk_list {unsigned int* fc_clusters; int /*<<< orphan*/ * fc_chunks; } ;

/* Variables and functions */
 size_t OCFS2_INFO_MAX_HIST ; 
 size_t FUNC0 (unsigned int) ; 

__attribute__((used)) static void FUNC1(struct ocfs2_info_free_chunk_list *hist,
				   unsigned int chunksize)
{
	u32 index;

	index = FUNC0(chunksize);
	if (index >= OCFS2_INFO_MAX_HIST)
		index = OCFS2_INFO_MAX_HIST - 1;

	hist->fc_chunks[index]++;
	hist->fc_clusters[index] += chunksize;
}