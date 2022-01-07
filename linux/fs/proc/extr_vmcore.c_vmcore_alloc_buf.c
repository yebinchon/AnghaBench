
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* vmalloc_user (size_t) ;
 char* vzalloc (size_t) ;

__attribute__((used)) static inline char *vmcore_alloc_buf(size_t size)
{



 return vzalloc(size);

}
