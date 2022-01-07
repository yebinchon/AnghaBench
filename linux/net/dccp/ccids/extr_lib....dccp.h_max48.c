
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;


 scalar_t__ after48 (int const,int const) ;

__attribute__((used)) static inline u64 max48(const u64 seq1, const u64 seq2)
{
 return after48(seq1, seq2) ? seq1 : seq2;
}
