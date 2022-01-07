
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct grehdr {int protocol; } ;


 int htons (int ) ;

__attribute__((used)) static void build_gre_header(void *header, uint16_t proto)
{
 struct grehdr *greh = header;

 greh->protocol = htons(proto);
}
