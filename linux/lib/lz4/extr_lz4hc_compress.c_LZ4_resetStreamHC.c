
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int compressionLevel; int * base; } ;
struct TYPE_5__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_2__ LZ4_streamHC_t ;



void LZ4_resetStreamHC(LZ4_streamHC_t *LZ4_streamHCPtr, int compressionLevel)
{
 LZ4_streamHCPtr->internal_donotuse.base = ((void*)0);
 LZ4_streamHCPtr->internal_donotuse.compressionLevel = (unsigned int)compressionLevel;
}
