
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timekeeper {int offs_real; int offs_tai; int tai_offset; } ;
typedef int s32 ;


 int ktime_add (int ,int ) ;
 int ktime_set (int ,int ) ;

__attribute__((used)) static void __timekeeping_set_tai_offset(struct timekeeper *tk, s32 tai_offset)
{
 tk->tai_offset = tai_offset;
 tk->offs_tai = ktime_add(tk->offs_real, ktime_set(tai_offset, 0));
}
