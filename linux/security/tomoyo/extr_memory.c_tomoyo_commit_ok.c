
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_NOFS ;
 int kfree (void*) ;
 void* kzalloc (unsigned int const,int ) ;
 int memmove (void*,void*,unsigned int const) ;
 int memset (void*,int ,unsigned int const) ;
 scalar_t__ tomoyo_memory_ok (void*) ;

void *tomoyo_commit_ok(void *data, const unsigned int size)
{
 void *ptr = kzalloc(size, GFP_NOFS);

 if (tomoyo_memory_ok(ptr)) {
  memmove(ptr, data, size);
  memset(data, 0, size);
  return ptr;
 }
 kfree(ptr);
 return ((void*)0);
}
