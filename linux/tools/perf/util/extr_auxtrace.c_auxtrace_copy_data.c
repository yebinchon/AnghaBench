
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_session {int data; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ SSIZE_MAX ;
 int free (void*) ;
 void* malloc (scalar_t__) ;
 int perf_data__fd (int ) ;
 scalar_t__ readn (int,void*,scalar_t__) ;

__attribute__((used)) static void *auxtrace_copy_data(u64 size, struct perf_session *session)
{
 int fd = perf_data__fd(session->data);
 void *p;
 ssize_t ret;

 if (size > SSIZE_MAX)
  return ((void*)0);

 p = malloc(size);
 if (!p)
  return ((void*)0);

 ret = readn(fd, p, size);
 if (ret != (ssize_t)size) {
  free(p);
  return ((void*)0);
 }

 return p;
}
