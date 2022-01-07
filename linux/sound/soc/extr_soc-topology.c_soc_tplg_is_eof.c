
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct soc_tplg {TYPE_1__* fw; int * hdr_pos; } ;
struct TYPE_2__ {int size; int const* data; } ;



__attribute__((used)) static inline int soc_tplg_is_eof(struct soc_tplg *tplg)
{
 const u8 *end = tplg->hdr_pos;

 if (end >= tplg->fw->data + tplg->fw->size)
  return 1;
 return 0;
}
