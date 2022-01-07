
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ jvmtiError ;
typedef TYPE_1__* jvmtiEnv ;
struct TYPE_5__ {scalar_t__ (* GetErrorName ) (TYPE_1__**,scalar_t__,char**) ;int (* Deallocate ) (TYPE_1__**,unsigned char*) ;} ;


 scalar_t__ JVMTI_ERROR_NONE ;
 scalar_t__ stub1 (TYPE_1__**,scalar_t__,char**) ;
 int stub2 (TYPE_1__**,unsigned char*) ;
 int warnx (char*,char const*,scalar_t__) ;

__attribute__((used)) static void print_error(jvmtiEnv *jvmti, const char *msg, jvmtiError ret)
{
 char *err_msg = ((void*)0);
 jvmtiError err;
 err = (*jvmti)->GetErrorName(jvmti, ret, &err_msg);
 if (err == JVMTI_ERROR_NONE) {
  warnx("%s failed with %s", msg, err_msg);
  (*jvmti)->Deallocate(jvmti, (unsigned char *)err_msg);
 } else {
  warnx("%s failed with an unknown error %d", msg, ret);
 }
}
