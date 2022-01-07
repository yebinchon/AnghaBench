
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int cpu_to_le32 (int ) ;
 int pr_debug (char*,int ,int ,int ,int ,char*,int) ;
 int sscanf (char*,char*,int *,int *,int *,int *) ;

__attribute__((used)) static int sscanf_key(char *buf, __le32 *key)
{
 u32 user_key[4];
 int i, ret = 0;

 if (sscanf(buf, "%x-%x-%x-%x", user_key, user_key + 1,
     user_key + 2, user_key + 3) != 4) {
  ret = -EINVAL;
 } else {
  for (i = 0; i < ARRAY_SIZE(user_key); i++)
   key[i] = cpu_to_le32(user_key[i]);
 }
 pr_debug("proc TFO key set 0x%x-%x-%x-%x <- 0x%s: %u\n",
   user_key[0], user_key[1], user_key[2], user_key[3], buf, ret);

 return ret;
}
