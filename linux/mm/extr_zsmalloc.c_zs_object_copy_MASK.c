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
struct size_class {int size; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 struct page* FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,struct page**,unsigned int*) ; 

__attribute__((used)) static void FUNC6(struct size_class *class, unsigned long dst,
				unsigned long src)
{
	struct page *s_page, *d_page;
	unsigned int s_objidx, d_objidx;
	unsigned long s_off, d_off;
	void *s_addr, *d_addr;
	int s_size, d_size, size;
	int written = 0;

	s_size = d_size = class->size;

	FUNC5(src, &s_page, &s_objidx);
	FUNC5(dst, &d_page, &d_objidx);

	s_off = (class->size * s_objidx) & ~PAGE_MASK;
	d_off = (class->size * d_objidx) & ~PAGE_MASK;

	if (s_off + class->size > PAGE_SIZE)
		s_size = PAGE_SIZE - s_off;

	if (d_off + class->size > PAGE_SIZE)
		d_size = PAGE_SIZE - d_off;

	s_addr = FUNC1(s_page);
	d_addr = FUNC1(d_page);

	while (1) {
		size = FUNC4(s_size, d_size);
		FUNC3(d_addr + d_off, s_addr + s_off, size);
		written += size;

		if (written == class->size)
			break;

		s_off += size;
		s_size -= size;
		d_off += size;
		d_size -= size;

		if (s_off >= PAGE_SIZE) {
			FUNC2(d_addr);
			FUNC2(s_addr);
			s_page = FUNC0(s_page);
			s_addr = FUNC1(s_page);
			d_addr = FUNC1(d_page);
			s_size = class->size - written;
			s_off = 0;
		}

		if (d_off >= PAGE_SIZE) {
			FUNC2(d_addr);
			d_page = FUNC0(d_page);
			d_addr = FUNC1(d_page);
			d_size = class->size - written;
			d_off = 0;
		}
	}

	FUNC2(d_addr);
	FUNC2(s_addr);
}