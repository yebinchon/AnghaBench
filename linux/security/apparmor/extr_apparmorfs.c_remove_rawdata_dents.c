
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_loaddata {int ** dents; } ;


 int AAFS_LOADDATA_NDENTS ;
 int IS_ERR_OR_NULL (int *) ;
 int aafs_remove (int *) ;

__attribute__((used)) static void remove_rawdata_dents(struct aa_loaddata *rawdata)
{
 int i;

 for (i = 0; i < AAFS_LOADDATA_NDENTS; i++) {
  if (!IS_ERR_OR_NULL(rawdata->dents[i])) {

   aafs_remove(rawdata->dents[i]);
   rawdata->dents[i] = ((void*)0);
  }
 }
}
