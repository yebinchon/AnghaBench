
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int gap_count; } ;



__attribute__((used)) static int current_bandwidth_overhead(struct fw_card *card)
{
 return card->gap_count < 63 ? card->gap_count * 97 / 10 + 89 : 512;
}
