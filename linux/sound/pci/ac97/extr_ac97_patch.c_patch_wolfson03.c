
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int patch_wolfson_wm9703_ops ;

__attribute__((used)) static int patch_wolfson03(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_wolfson_wm9703_ops;
 return 0;
}
