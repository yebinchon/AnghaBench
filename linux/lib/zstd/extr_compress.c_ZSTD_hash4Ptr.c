
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 size_t ZSTD_hash4 (int ,int ) ;
 int ZSTD_read32 (void const*) ;

__attribute__((used)) static size_t ZSTD_hash4Ptr(const void *ptr, U32 h) { return ZSTD_hash4(ZSTD_read32(ptr), h); }
