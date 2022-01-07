
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ jvmtiError ;
typedef TYPE_1__* jvmtiEnv ;
typedef int jmethodID ;
typedef int jclass ;
struct TYPE_9__ {scalar_t__ (* GetMethodDeclaringClass ) (TYPE_1__**,int ,int *) ;scalar_t__ (* GetSourceFileName ) (TYPE_1__**,int ,char**) ;scalar_t__ (* GetClassSignature ) (TYPE_1__**,int ,char**,int *) ;int (* Deallocate ) (TYPE_1__**,unsigned char*) ;} ;


 scalar_t__ JVMTI_ERROR_NONE ;
 scalar_t__ JVMTI_ERROR_OUT_OF_MEMORY ;
 int PATH_MAX ;
 int copy_class_filename (char*,char*,char*,int) ;
 char* malloc (size_t) ;
 int print_error (TYPE_1__**,char*,scalar_t__) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ stub1 (TYPE_1__**,int ,int *) ;
 scalar_t__ stub2 (TYPE_1__**,int ,char**) ;
 scalar_t__ stub3 (TYPE_1__**,int ,char**,int *) ;
 int stub4 (TYPE_1__**,unsigned char*) ;
 int stub5 (TYPE_1__**,unsigned char*) ;

__attribute__((used)) static jvmtiError
get_source_filename(jvmtiEnv *jvmti, jmethodID methodID, char ** buffer)
{
 jvmtiError ret;
 jclass decl_class;
 char *file_name = ((void*)0);
 char *class_sign = ((void*)0);
 char fn[PATH_MAX];
 size_t len;

 ret = (*jvmti)->GetMethodDeclaringClass(jvmti, methodID, &decl_class);
 if (ret != JVMTI_ERROR_NONE) {
  print_error(jvmti, "GetMethodDeclaringClass", ret);
  return ret;
 }

 ret = (*jvmti)->GetSourceFileName(jvmti, decl_class, &file_name);
 if (ret != JVMTI_ERROR_NONE) {
  print_error(jvmti, "GetSourceFileName", ret);
  return ret;
 }

 ret = (*jvmti)->GetClassSignature(jvmti, decl_class, &class_sign, ((void*)0));
 if (ret != JVMTI_ERROR_NONE) {
  print_error(jvmti, "GetClassSignature", ret);
  goto free_file_name_error;
 }

 copy_class_filename(class_sign, file_name, fn, PATH_MAX);
 len = strlen(fn);
 *buffer = malloc((len + 1) * sizeof(char));
 if (!*buffer) {
  print_error(jvmti, "GetClassSignature", ret);
  ret = JVMTI_ERROR_OUT_OF_MEMORY;
  goto free_class_sign_error;
 }
 strcpy(*buffer, fn);
 ret = JVMTI_ERROR_NONE;

free_class_sign_error:
 (*jvmti)->Deallocate(jvmti, (unsigned char *)class_sign);
free_file_name_error:
 (*jvmti)->Deallocate(jvmti, (unsigned char *)file_name);

 return ret;
}
