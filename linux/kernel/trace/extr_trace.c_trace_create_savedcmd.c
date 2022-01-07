
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SAVED_CMDLINES_DEFAULT ;
 int allocate_cmdlines_buffer (int ,int *) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int * savedcmd ;

__attribute__((used)) static int trace_create_savedcmd(void)
{
 int ret;

 savedcmd = kmalloc(sizeof(*savedcmd), GFP_KERNEL);
 if (!savedcmd)
  return -ENOMEM;

 ret = allocate_cmdlines_buffer(SAVED_CMDLINES_DEFAULT, savedcmd);
 if (ret < 0) {
  kfree(savedcmd);
  savedcmd = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
