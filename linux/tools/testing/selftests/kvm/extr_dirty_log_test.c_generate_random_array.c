
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 size_t random () ;

__attribute__((used)) static void generate_random_array(uint64_t *guest_array, uint64_t size)
{
 uint64_t i;

 for (i = 0; i < size; i++)
  guest_array[i] = random();
}
