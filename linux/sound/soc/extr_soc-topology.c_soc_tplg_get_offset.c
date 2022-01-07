
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {TYPE_1__* fw; scalar_t__ pos; } ;
struct TYPE_2__ {scalar_t__ data; } ;



__attribute__((used)) static inline unsigned long soc_tplg_get_offset(struct soc_tplg *tplg)
{
 return (unsigned long)(tplg->pos - tplg->fw->data);
}
