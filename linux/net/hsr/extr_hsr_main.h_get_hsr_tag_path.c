
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hsr_tag {int path_and_LSDU_size; } ;


 int ntohs (int ) ;

__attribute__((used)) static inline u16 get_hsr_tag_path(struct hsr_tag *ht)
{
 return ntohs(ht->path_and_LSDU_size) >> 12;
}
