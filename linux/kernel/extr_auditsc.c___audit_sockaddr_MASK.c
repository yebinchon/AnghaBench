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
struct sockaddr_storage {int dummy; } ;
struct audit_context {int sockaddr_len; void* sockaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct audit_context* FUNC0 () ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 

int FUNC3(int len, void *a)
{
	struct audit_context *context = FUNC0();

	if (!context->sockaddr) {
		void *p = FUNC1(sizeof(struct sockaddr_storage), GFP_KERNEL);
		if (!p)
			return -ENOMEM;
		context->sockaddr = p;
	}

	context->sockaddr_len = len;
	FUNC2(context->sockaddr, a, len);
	return 0;
}