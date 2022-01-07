
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tableType_t ;
typedef size_t U32 ;
typedef int U16 ;
typedef int BYTE ;






__attribute__((used)) static void LZ4_putPositionOnHash(
 const BYTE *p,
 U32 h,
 void *tableBase,
 tableType_t const tableType,
 const BYTE *srcBase)
{
 switch (tableType) {
 case 130:
 {
  const BYTE **hashTable = (const BYTE **)tableBase;

  hashTable[h] = p;
  return;
 }
 case 128:
 {
  U32 *hashTable = (U32 *) tableBase;

  hashTable[h] = (U32)(p - srcBase);
  return;
 }
 case 129:
 {
  U16 *hashTable = (U16 *) tableBase;

  hashTable[h] = (U16)(p - srcBase);
  return;
 }
 }
}
