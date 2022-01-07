
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hsr_tag {int path_and_LSDU_size; } ;


 int htons (int) ;
 int ntohs (int ) ;

__attribute__((used)) static inline void set_hsr_tag_LSDU_size(struct hsr_tag *ht, u16 LSDU_size)
{
 ht->path_and_LSDU_size = htons((ntohs(ht->path_and_LSDU_size) &
           0xF000) | (LSDU_size & 0x0FFF));
}
