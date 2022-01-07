
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t lid_t ;
struct TYPE_4__ {size_t freelock; scalar_t__ tlocksInUse; int freelockwait; int lowlockwait; } ;
struct TYPE_3__ {size_t next; scalar_t__ tid; } ;


 int TXN_WAKEUP (int *) ;
 TYPE_2__ TxAnchor ;
 TYPE_1__* TxLock ;
 scalar_t__ TxLockLWM ;
 int jfs_info (char*) ;
 scalar_t__ jfs_tlocks_low ;

__attribute__((used)) static void txLockFree(lid_t lid)
{
 TxLock[lid].tid = 0;
 TxLock[lid].next = TxAnchor.freelock;
 TxAnchor.freelock = lid;
 TxAnchor.tlocksInUse--;
 if (jfs_tlocks_low && (TxAnchor.tlocksInUse < TxLockLWM)) {
  jfs_info("txLockFree jfs_tlocks_low no more");
  jfs_tlocks_low = 0;
  TXN_WAKEUP(&TxAnchor.lowlockwait);
 }
 TXN_WAKEUP(&TxAnchor.freelockwait);
}
