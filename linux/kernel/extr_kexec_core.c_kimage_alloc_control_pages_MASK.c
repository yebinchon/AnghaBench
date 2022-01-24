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
struct page {int dummy; } ;
struct kimage {int type; } ;

/* Variables and functions */
#define  KEXEC_TYPE_CRASH 129 
#define  KEXEC_TYPE_DEFAULT 128 
 struct page* FUNC0 (struct kimage*,unsigned int) ; 
 struct page* FUNC1 (struct kimage*,unsigned int) ; 

struct page *FUNC2(struct kimage *image,
					 unsigned int order)
{
	struct page *pages = NULL;

	switch (image->type) {
	case KEXEC_TYPE_DEFAULT:
		pages = FUNC1(image, order);
		break;
	case KEXEC_TYPE_CRASH:
		pages = FUNC0(image, order);
		break;
	}

	return pages;
}