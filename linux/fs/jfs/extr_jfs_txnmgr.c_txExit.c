
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * TxBlock ;
 int * TxLock ;
 int vfree (int *) ;

void txExit(void)
{
 vfree(TxLock);
 TxLock = ((void*)0);
 vfree(TxBlock);
 TxBlock = ((void*)0);
}
