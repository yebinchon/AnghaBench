
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct offset_v2 {int v; } ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 scalar_t__ TYPE_ANY ;
 scalar_t__ TYPE_MAXTYPE ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline __u16 offset_v2_k_type(const struct offset_v2 *v2)
{
 __u8 type = le64_to_cpu(v2->v) >> 60;
 return (type <= TYPE_MAXTYPE) ? type : TYPE_ANY;
}
