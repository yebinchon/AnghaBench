
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entropyPresent; int dictSize; char const* dictContent; int entropy; void* dictID; } ;
typedef TYPE_1__ ZSTD_DDict ;
typedef scalar_t__ U32 ;


 int CHECK_E (int ,int ) ;
 scalar_t__ const ZSTD_DICT_MAGIC ;
 int ZSTD_loadEntropy (int *,char const*,int) ;
 void* ZSTD_readLE32 (char const*) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTD_loadEntropy_inDDict(ZSTD_DDict *ddict)
{
 ddict->dictID = 0;
 ddict->entropyPresent = 0;
 if (ddict->dictSize < 8)
  return 0;
 {
  U32 const magic = ZSTD_readLE32(ddict->dictContent);
  if (magic != ZSTD_DICT_MAGIC)
   return 0;
 }
 ddict->dictID = ZSTD_readLE32((const char *)ddict->dictContent + 4);


 CHECK_E(ZSTD_loadEntropy(&ddict->entropy, ddict->dictContent, ddict->dictSize), dictionary_corrupted);
 ddict->entropyPresent = 1;
 return 0;
}
