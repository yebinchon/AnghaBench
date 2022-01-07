
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_loaddata {int count; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

__attribute__((used)) static inline struct aa_loaddata *
__aa_get_loaddata(struct aa_loaddata *data)
{
 if (data && kref_get_unless_zero(&(data->count)))
  return data;

 return ((void*)0);
}
