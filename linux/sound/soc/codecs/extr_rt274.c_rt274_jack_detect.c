
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt274_priv {int regmap; int component; } ;


 int EINVAL ;
 int RT274_GET_HP_SENSE ;
 int RT274_GET_MIC_SENSE ;
 int pr_debug (char*,int,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int rt274_jack_detect(struct rt274_priv *rt274, bool *hp, bool *mic)
{
 unsigned int buf;
 int ret;

 *hp = 0;
 *mic = 0;

 if (!rt274->component)
  return -EINVAL;

 ret = regmap_read(rt274->regmap, RT274_GET_HP_SENSE, &buf);
 if (ret)
  return ret;

 *hp = buf & 0x80000000;
 ret = regmap_read(rt274->regmap, RT274_GET_MIC_SENSE, &buf);
 if (ret)
  return ret;

 *mic = buf & 0x80000000;

 pr_debug("*hp = %d *mic = %d\n", *hp, *mic);

 return 0;
}
