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
struct napi_alloc_cache {int /*<<< orphan*/  page; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  napi_alloc_cache ; 
 void* FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 struct napi_alloc_cache* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(unsigned int fragsz, gfp_t gfp_mask)
{
	struct napi_alloc_cache *nc = FUNC1(&napi_alloc_cache);

	return FUNC0(&nc->page, fragsz, gfp_mask);
}