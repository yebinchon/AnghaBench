
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tableType_t ;
typedef size_t U32 ;
typedef int U16 ;
typedef int BYTE ;


 scalar_t__ byPtr ;
 scalar_t__ byU32 ;

__attribute__((used)) static const BYTE *LZ4_getPositionOnHash(
 U32 h,
 void *tableBase,
 tableType_t tableType,
 const BYTE *srcBase)
{
 if (tableType == byPtr) {
  const BYTE **hashTable = (const BYTE **) tableBase;

  return hashTable[h];
 }

 if (tableType == byU32) {
  const U32 * const hashTable = (U32 *) tableBase;

  return hashTable[h] + srcBase;
 }

 {

  const U16 * const hashTable = (U16 *) tableBase;

  return hashTable[h] + srcBase;
 }
}
