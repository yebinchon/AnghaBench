
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hsr_tag {int dummy; } ;
struct hsr_sup_tag {int dummy; } ;


 int get_hsr_tag_path (struct hsr_tag*) ;

__attribute__((used)) static inline u16 get_hsr_stag_path(struct hsr_sup_tag *hst)
{
 return get_hsr_tag_path((struct hsr_tag *)hst);
}
