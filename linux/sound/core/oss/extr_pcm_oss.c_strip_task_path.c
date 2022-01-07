
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *strip_task_path(const char *path)
{
 const char *ptr, *ptrl = ((void*)0);
 for (ptr = path; *ptr; ptr++) {
  if (*ptr == '/')
   ptrl = ptr + 1;
 }
 return ptrl;
}
