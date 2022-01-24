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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct machine {int dummy; } ;
struct dso_cache {int offset; scalar_t__ size; int /*<<< orphan*/  data; } ;
struct dso {scalar_t__ binary_type; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ DSO_BINARY_TYPE__BPF_PROG_INFO ; 
 int DSO__DATA_CACHE_MASK ; 
 scalar_t__ DSO__DATA_CACHE_SIZE ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (struct dso*,int,int /*<<< orphan*/ ) ; 
 struct dso_cache* FUNC1 (struct dso*,struct dso_cache*) ; 
 scalar_t__ FUNC2 (struct dso_cache*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct dso*,struct machine*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dso_cache*) ; 
 struct dso_cache* FUNC5 (scalar_t__) ; 

__attribute__((used)) static ssize_t
FUNC6(struct dso *dso, struct machine *machine,
		u64 offset, u8 *data, ssize_t size)
{
	u64 cache_offset = offset & DSO__DATA_CACHE_MASK;
	struct dso_cache *cache;
	struct dso_cache *old;
	ssize_t ret;

	cache = FUNC5(sizeof(*cache) + DSO__DATA_CACHE_SIZE);
	if (!cache)
		return -ENOMEM;

	if (dso->binary_type == DSO_BINARY_TYPE__BPF_PROG_INFO)
		ret = FUNC0(dso, cache_offset, cache->data);
	else
		ret = FUNC3(dso, machine, cache_offset, cache->data);

	if (ret > 0) {
		cache->offset = cache_offset;
		cache->size   = ret;

		old = FUNC1(dso, cache);
		if (old) {
			/* we lose the race */
			FUNC4(cache);
			cache = old;
		}

		ret = FUNC2(cache, offset, data, size);
	}

	if (ret <= 0)
		FUNC4(cache);

	return ret;
}