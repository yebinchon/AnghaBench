
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAX_EMPTY ;
 int xa_to_value (void*) ;

__attribute__((used)) static int dax_is_empty_entry(void *entry)
{
 return xa_to_value(entry) & DAX_EMPTY;
}
