
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ after (int ,int ) ;

__attribute__((used)) static bool tcp_rack_sent_after(u64 t1, u64 t2, u32 seq1, u32 seq2)
{
 return t1 > t2 || (t1 == t2 && after(seq1, seq2));
}
