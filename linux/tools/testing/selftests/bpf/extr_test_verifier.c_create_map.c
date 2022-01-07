
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __create_map (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int create_map(uint32_t type, uint32_t size_key,
        uint32_t size_value, uint32_t max_elem)
{
 return __create_map(type, size_key, size_value, max_elem, 0);
}
