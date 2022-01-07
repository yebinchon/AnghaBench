
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int unusable_pages; int dest_pages; int control_pages; int type; int control_page; scalar_t__ head; scalar_t__* last_entry; scalar_t__* entry; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KEXEC_TYPE_DEFAULT ;
 struct kimage* kzalloc (int,int ) ;

struct kimage *do_kimage_alloc_init(void)
{
 struct kimage *image;


 image = kzalloc(sizeof(*image), GFP_KERNEL);
 if (!image)
  return ((void*)0);

 image->head = 0;
 image->entry = &image->head;
 image->last_entry = &image->head;
 image->control_page = ~0;
 image->type = KEXEC_TYPE_DEFAULT;


 INIT_LIST_HEAD(&image->control_pages);


 INIT_LIST_HEAD(&image->dest_pages);


 INIT_LIST_HEAD(&image->unusable_pages);

 return image;
}
