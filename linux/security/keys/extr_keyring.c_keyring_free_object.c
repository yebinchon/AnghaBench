
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_put (int ) ;
 int keyring_ptr_to_key (void*) ;

__attribute__((used)) static void keyring_free_object(void *object)
{
 key_put(keyring_ptr_to_key(object));
}
