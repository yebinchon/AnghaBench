
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* XA_RETRY_ENTRY ;

__attribute__((used)) static bool dax_is_conflict(void *entry)
{
 return entry == XA_RETRY_ENTRY;
}
