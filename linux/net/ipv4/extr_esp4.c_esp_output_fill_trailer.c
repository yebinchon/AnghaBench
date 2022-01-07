
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u8 ;


 int memset (int*,int ,int) ;

__attribute__((used)) static void esp_output_fill_trailer(u8 *tail, int tfclen, int plen, __u8 proto)
{

 if (tfclen) {
  memset(tail, 0, tfclen);
  tail += tfclen;
 }
 do {
  int i;
  for (i = 0; i < plen - 2; i++)
   tail[i] = i + 1;
 } while (0);
 tail[plen - 2] = plen - 2;
 tail[plen - 1] = proto;
}
