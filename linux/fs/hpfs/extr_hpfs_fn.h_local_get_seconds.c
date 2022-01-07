
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time32_t ;
struct super_block {int dummy; } ;


 int gmt_to_local (struct super_block*,int ) ;
 int ktime_get_real_seconds () ;

__attribute__((used)) static inline time32_t local_get_seconds(struct super_block *s)
{
 return gmt_to_local(s, ktime_get_real_seconds());
}
