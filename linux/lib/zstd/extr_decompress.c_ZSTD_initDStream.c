
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_5__ {size_t maxWindowSize; char* inBuff; size_t inBuffSize; char* outBuff; size_t outBuffSize; int customMem; scalar_t__ hostageByte; scalar_t__ legacyVersion; int * ddictLocal; int * ddict; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ lhSize; int stage; } ;
typedef TYPE_1__ ZSTD_DStream ;


 size_t MIN (size_t,int ) ;
 int WILDCOPY_OVERLENGTH ;
 int ZSTD_BLOCKSIZE_ABSOLUTEMAX ;
 TYPE_1__* ZSTD_createDStream_advanced (int const) ;
 int ZSTD_freeDDict (int *) ;
 int ZSTD_freeDStream (TYPE_1__*) ;
 int ZSTD_initStack (void*,size_t) ;
 scalar_t__ ZSTD_malloc (size_t const,int ) ;
 int zdss_loadHeader ;

ZSTD_DStream *ZSTD_initDStream(size_t maxWindowSize, void *workspace, size_t workspaceSize)
{
 ZSTD_customMem const stackMem = ZSTD_initStack(workspace, workspaceSize);
 ZSTD_DStream *zds = ZSTD_createDStream_advanced(stackMem);
 if (!zds) {
  return ((void*)0);
 }

 zds->maxWindowSize = maxWindowSize;
 zds->stage = zdss_loadHeader;
 zds->lhSize = zds->inPos = zds->outStart = zds->outEnd = 0;
 ZSTD_freeDDict(zds->ddictLocal);
 zds->ddictLocal = ((void*)0);
 zds->ddict = zds->ddictLocal;
 zds->legacyVersion = 0;
 zds->hostageByte = 0;

 {
  size_t const blockSize = MIN(zds->maxWindowSize, ZSTD_BLOCKSIZE_ABSOLUTEMAX);
  size_t const neededOutSize = zds->maxWindowSize + blockSize + WILDCOPY_OVERLENGTH * 2;

  zds->inBuff = (char *)ZSTD_malloc(blockSize, zds->customMem);
  zds->inBuffSize = blockSize;
  zds->outBuff = (char *)ZSTD_malloc(neededOutSize, zds->customMem);
  zds->outBuffSize = neededOutSize;
  if (zds->inBuff == ((void*)0) || zds->outBuff == ((void*)0)) {
   ZSTD_freeDStream(zds);
   return ((void*)0);
  }
 }
 return zds;
}
