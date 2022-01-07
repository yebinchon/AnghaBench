
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HUF_COMPRESSBOUND (size_t) ;

size_t HUF_compressBound(size_t size) { return HUF_COMPRESSBOUND(size); }
