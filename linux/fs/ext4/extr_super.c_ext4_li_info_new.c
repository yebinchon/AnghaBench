
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_lazy_init {int li_state; int li_list_mtx; int li_request_list; } ;


 int ENOMEM ;
 int EXT4_LAZYINIT_QUIT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ext4_lazy_init* ext4_li_info ;
 struct ext4_lazy_init* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ext4_li_info_new(void)
{
 struct ext4_lazy_init *eli = ((void*)0);

 eli = kzalloc(sizeof(*eli), GFP_KERNEL);
 if (!eli)
  return -ENOMEM;

 INIT_LIST_HEAD(&eli->li_request_list);
 mutex_init(&eli->li_list_mtx);

 eli->li_state |= EXT4_LAZYINIT_QUIT;

 ext4_li_info = eli;

 return 0;
}
