#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ jvmtiError ;
typedef  TYPE_1__* jvmtiEnv ;
struct TYPE_5__ {scalar_t__ (* GetErrorName ) (TYPE_1__**,scalar_t__,char**) ;int /*<<< orphan*/  (* Deallocate ) (TYPE_1__**,unsigned char*) ;} ;

/* Variables and functions */
 scalar_t__ JVMTI_ERROR_NONE ; 
 scalar_t__ FUNC0 (TYPE_1__**,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(jvmtiEnv *jvmti, const char *msg, jvmtiError ret)
{
	char *err_msg = NULL;
	jvmtiError err;
	err = (*jvmti)->GetErrorName(jvmti, ret, &err_msg);
	if (err == JVMTI_ERROR_NONE) {
		FUNC2("%s failed with %s", msg, err_msg);
		(*jvmti)->Deallocate(jvmti, (unsigned char *)err_msg);
	} else {
		FUNC2("%s failed with an unknown error %d", msg, ret);
	}
}