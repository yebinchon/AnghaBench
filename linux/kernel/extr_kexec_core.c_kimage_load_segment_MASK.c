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
struct kimage {int type; } ;
struct kexec_segment {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
#define  KEXEC_TYPE_CRASH 129 
#define  KEXEC_TYPE_DEFAULT 128 
 int FUNC0 (struct kimage*,struct kexec_segment*) ; 
 int FUNC1 (struct kimage*,struct kexec_segment*) ; 

int FUNC2(struct kimage *image,
				struct kexec_segment *segment)
{
	int result = -ENOMEM;

	switch (image->type) {
	case KEXEC_TYPE_DEFAULT:
		result = FUNC1(image, segment);
		break;
	case KEXEC_TYPE_CRASH:
		result = FUNC0(image, segment);
		break;
	}

	return result;
}