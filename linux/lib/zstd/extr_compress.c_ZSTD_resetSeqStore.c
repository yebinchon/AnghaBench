
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ longLengthID; int sequencesStart; int sequences; int litStart; int lit; } ;
typedef TYPE_1__ seqStore_t ;



__attribute__((used)) static void ZSTD_resetSeqStore(seqStore_t *ssPtr)
{
 ssPtr->lit = ssPtr->litStart;
 ssPtr->sequences = ssPtr->sequencesStart;
 ssPtr->longLengthID = 0;
}
