
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
typedef scalar_t__ U16 ;
struct TYPE_2__ {scalar_t__ deltaFindState; scalar_t__ deltaNbBits; } ;
typedef TYPE_1__ FSE_symbolCompressionTransform ;
typedef int FSE_CTable ;
typedef size_t BYTE ;



size_t FSE_buildCTable_rle(FSE_CTable *ct, BYTE symbolValue)
{
 void *ptr = ct;
 U16 *tableU16 = ((U16 *)ptr) + 2;
 void *FSCTptr = (U32 *)ptr + 2;
 FSE_symbolCompressionTransform *symbolTT = (FSE_symbolCompressionTransform *)FSCTptr;


 tableU16[-2] = (U16)0;
 tableU16[-1] = (U16)symbolValue;


 tableU16[0] = 0;
 tableU16[1] = 0;


 symbolTT[symbolValue].deltaNbBits = 0;
 symbolTT[symbolValue].deltaFindState = 0;

 return 0;
}
