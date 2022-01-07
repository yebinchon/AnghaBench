
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int NSEC_PER_SEC ;
 int div64_s64 (int,int ) ;

__attribute__((used)) static s64 timediff_to_credits(s64 timediff, s64 slope)
{
 return div64_s64(timediff * slope, NSEC_PER_SEC);
}
