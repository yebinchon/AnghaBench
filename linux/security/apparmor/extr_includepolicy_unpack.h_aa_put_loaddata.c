
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_loaddata {int count; } ;


 int aa_loaddata_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void aa_put_loaddata(struct aa_loaddata *data)
{
 if (data)
  kref_put(&data->count, aa_loaddata_kref);
}
