
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAX_LOCKED ;
 int xa_to_value (void*) ;

__attribute__((used)) static bool dax_is_locked(void *entry)
{
 return xa_to_value(entry) & DAX_LOCKED;
}
