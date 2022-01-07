
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline int between48(const u64 seq1, const u64 seq2, const u64 seq3)
{
 return (seq3 << 16) - (seq2 << 16) >= (seq1 << 16) - (seq2 << 16);
}
