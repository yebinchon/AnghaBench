
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFSD_MINVERS ;
 int NFSD_NRVERS ;
 int ** nfsd_version ;

__attribute__((used)) static bool
nfsd_support_version(int vers)
{
 if (vers >= NFSD_MINVERS && vers < NFSD_NRVERS)
  return nfsd_version[vers] != ((void*)0);
 return 0;
}
