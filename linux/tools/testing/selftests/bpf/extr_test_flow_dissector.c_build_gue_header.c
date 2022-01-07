
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct guehdr {int proto_ctype; } ;



__attribute__((used)) static void build_gue_header(void *header, uint8_t proto)
{
 struct guehdr *gueh = header;

 gueh->proto_ctype = proto;
}
