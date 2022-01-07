
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline uint xlog_get_client_id(__be32 i)
{
 return be32_to_cpu(i) >> 24;
}
