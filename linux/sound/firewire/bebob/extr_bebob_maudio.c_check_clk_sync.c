
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_bebob {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int get_meter (struct snd_bebob*,int*,unsigned int) ;
 int kfree (int*) ;
 int* kmalloc (unsigned int,int ) ;

__attribute__((used)) static int
check_clk_sync(struct snd_bebob *bebob, unsigned int size, bool *sync)
{
 int err;
 u8 *buf;

 buf = kmalloc(size, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 err = get_meter(bebob, buf, size);
 if (err < 0)
  goto end;


 *sync = (buf[size - 2] != 0xff);
end:
 kfree(buf);
 return err;
}
