
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_KEYS ;
 int WARN_ON (int) ;

__attribute__((used)) static int key_id_index(unsigned int key_id)
{
 if (key_id >= NUM_KEYS) {
  WARN_ON(1);
  return 0;
 }
 return key_id;
}
