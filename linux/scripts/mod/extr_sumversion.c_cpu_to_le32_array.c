
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int ) ;

__attribute__((used)) static inline void cpu_to_le32_array(uint32_t *buf, unsigned int words)
{
 while (words--) {
  *buf = htonl(*buf);
  buf++;
 }
}
