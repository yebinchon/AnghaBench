
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_TYPE_ERROR ;

__attribute__((used)) static inline bool rcode_is_permanent_error(int rcode)
{
 return rcode == RCODE_TYPE_ERROR || rcode == RCODE_ADDRESS_ERROR;
}
