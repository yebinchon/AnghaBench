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
struct snd_gf1_mem_block {scalar_t__ ptr; struct snd_gf1_mem_block* next; struct snd_gf1_mem_block* prev; } ;
struct snd_gf1_mem {struct snd_gf1_mem_block* last; struct snd_gf1_mem_block* first; int /*<<< orphan*/  memory_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_gf1_mem_block* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct snd_gf1_mem_block *FUNC2(struct snd_gf1_mem * alloc,
					       struct snd_gf1_mem_block * block)
{
	struct snd_gf1_mem_block *pblock, *nblock;

	nblock = FUNC0(sizeof(struct snd_gf1_mem_block), GFP_KERNEL);
	if (nblock == NULL)
		return NULL;
	*nblock = *block;
	pblock = alloc->first;
	while (pblock) {
		if (pblock->ptr > nblock->ptr) {
			nblock->prev = pblock->prev;
			nblock->next = pblock;
			pblock->prev = nblock;
			if (pblock == alloc->first)
				alloc->first = nblock;
			else
				nblock->prev->next = nblock;
			FUNC1(&alloc->memory_mutex);
			return NULL;
		}
		pblock = pblock->next;
	}
	nblock->next = NULL;
	if (alloc->last == NULL) {
		nblock->prev = NULL;
		alloc->first = alloc->last = nblock;
	} else {
		nblock->prev = alloc->last;
		alloc->last->next = nblock;
		alloc->last = nblock;
	}
	return nblock;
}