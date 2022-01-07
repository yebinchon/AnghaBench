
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_stack ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_ALIGN (int) ;

size_t ZSTD_DCtxWorkspaceBound(void) { return ZSTD_ALIGN(sizeof(ZSTD_stack)) + ZSTD_ALIGN(sizeof(ZSTD_DCtx)); }
