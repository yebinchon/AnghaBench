
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OVS_ATTR_NESTED ;
 unsigned int OVS_ATTR_VARIABLE ;

__attribute__((used)) static bool check_attr_len(unsigned int attr_len, unsigned int expected_len)
{
 return expected_len == attr_len ||
        expected_len == OVS_ATTR_NESTED ||
        expected_len == OVS_ATTR_VARIABLE;
}
