
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZSTD_customMem ;
typedef int ZSTD_CDict ;


 int * ZSTD_createCDict_advanced (void const*,size_t,int,int ,int const) ;
 int ZSTD_initStack (void*,size_t) ;

ZSTD_CDict *ZSTD_initCDict(const void *dict, size_t dictSize, ZSTD_parameters params, void *workspace, size_t workspaceSize)
{
 ZSTD_customMem const stackMem = ZSTD_initStack(workspace, workspaceSize);
 return ZSTD_createCDict_advanced(dict, dictSize, 1, params, stackMem);
}
