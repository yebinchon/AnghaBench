
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int cacheline_size () ;

__attribute__((used)) static inline u64 cl_offset(u64 address)
{

 return (address & (cacheline_size() - 1));
}
