#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ jvmtiError ;
typedef  TYPE_1__* jvmtiEnv ;
typedef  int /*<<< orphan*/  jmethodID ;
typedef  int /*<<< orphan*/  jclass ;
struct TYPE_9__ {scalar_t__ (* GetMethodDeclaringClass ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* GetSourceFileName ) (TYPE_1__**,int /*<<< orphan*/ ,char**) ;scalar_t__ (* GetClassSignature ) (TYPE_1__**,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* Deallocate ) (TYPE_1__**,unsigned char*) ;} ;

/* Variables and functions */
 scalar_t__ JVMTI_ERROR_NONE ; 
 scalar_t__ JVMTI_ERROR_OUT_OF_MEMORY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,unsigned char*) ; 

__attribute__((used)) static jvmtiError
FUNC10(jvmtiEnv *jvmti, jmethodID methodID, char ** buffer)
{
	jvmtiError ret;
	jclass decl_class;
	char *file_name = NULL;
	char *class_sign = NULL;
	char fn[PATH_MAX];
	size_t len;

	ret = (*jvmti)->GetMethodDeclaringClass(jvmti, methodID, &decl_class);
	if (ret != JVMTI_ERROR_NONE) {
		FUNC2(jvmti, "GetMethodDeclaringClass", ret);
		return ret;
	}

	ret = (*jvmti)->GetSourceFileName(jvmti, decl_class, &file_name);
	if (ret != JVMTI_ERROR_NONE) {
		FUNC2(jvmti, "GetSourceFileName", ret);
		return ret;
	}

	ret = (*jvmti)->GetClassSignature(jvmti, decl_class, &class_sign, NULL);
	if (ret != JVMTI_ERROR_NONE) {
		FUNC2(jvmti, "GetClassSignature", ret);
		goto free_file_name_error;
	}

	FUNC0(class_sign, file_name, fn, PATH_MAX);
	len = FUNC4(fn);
	*buffer = FUNC1((len + 1) * sizeof(char));
	if (!*buffer) {
		FUNC2(jvmti, "GetClassSignature", ret);
		ret = JVMTI_ERROR_OUT_OF_MEMORY;
		goto free_class_sign_error;
	}
	FUNC3(*buffer, fn);
	ret = JVMTI_ERROR_NONE;

free_class_sign_error:
	(*jvmti)->Deallocate(jvmti, (unsigned char *)class_sign);
free_file_name_error:
	(*jvmti)->Deallocate(jvmti, (unsigned char *)file_name);

	return ret;
}