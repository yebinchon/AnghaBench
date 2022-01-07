
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_customMem ;
typedef int ZSTD_DCtx ;


 int * ZSTD_createDCtx_advanced (int const) ;
 int ZSTD_initStack (void*,size_t) ;

ZSTD_DCtx *ZSTD_initDCtx(void *workspace, size_t workspaceSize)
{
 ZSTD_customMem const stackMem = ZSTD_initStack(workspace, workspaceSize);
 return ZSTD_createDCtx_advanced(stackMem);
}
