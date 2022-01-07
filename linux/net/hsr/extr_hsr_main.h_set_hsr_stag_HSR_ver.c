
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hsr_tag {int dummy; } ;
struct hsr_sup_tag {int dummy; } ;


 int set_hsr_tag_LSDU_size (struct hsr_tag*,int ) ;

__attribute__((used)) static inline void set_hsr_stag_HSR_ver(struct hsr_sup_tag *hst, u16 HSR_ver)
{
 set_hsr_tag_LSDU_size((struct hsr_tag *)hst, HSR_ver);
}
