
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mts64 {int dummy; } ;


 int kfree (struct mts64*) ;

__attribute__((used)) static int snd_mts64_free(struct mts64 *mts)
{
 kfree(mts);
 return 0;
}
