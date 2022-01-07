
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_parameters ;
struct TYPE_3__ {int refContext; } ;
typedef TYPE_1__ ZSTD_CDict ;


 int ZSTD_getParamsFromCCtx (int ) ;

__attribute__((used)) static ZSTD_parameters ZSTD_getParamsFromCDict(const ZSTD_CDict *cdict) { return ZSTD_getParamsFromCCtx(cdict->refContext); }
