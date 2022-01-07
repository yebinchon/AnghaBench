
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct soc_tplg {int dev; TYPE_1__* fw; int * pos; } ;
struct TYPE_2__ {int size; int const* data; } ;


 int EINVAL ;
 int dev_err (int ,char*,char const*,...) ;

__attribute__((used)) static int soc_tplg_check_elem_count(struct soc_tplg *tplg, size_t elem_size,
 unsigned int count, size_t bytes, const char *elem_type)
{
 const u8 *end = tplg->pos + elem_size * count;

 if (end > tplg->fw->data + tplg->fw->size) {
  dev_err(tplg->dev, "ASoC: %s overflow end of data\n",
   elem_type);
  return -EINVAL;
 }



 if (elem_size * count > bytes) {
  dev_err(tplg->dev,
   "ASoC: %s count %d of size %zu is bigger than chunk %zu\n",
   elem_type, count, elem_size, bytes);
  return -EINVAL;
 }

 return 0;
}
