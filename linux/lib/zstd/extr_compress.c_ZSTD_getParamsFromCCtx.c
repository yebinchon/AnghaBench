
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_parameters ;
struct TYPE_3__ {int params; } ;
typedef TYPE_1__ ZSTD_CCtx ;



__attribute__((used)) static ZSTD_parameters ZSTD_getParamsFromCCtx(const ZSTD_CCtx *cctx) { return cctx->params; }
