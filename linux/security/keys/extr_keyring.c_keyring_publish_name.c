
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int keyring_name_list; } ;
struct key {char* description; int name_link; } ;


 struct user_namespace* current_user_ns () ;
 int keyring_name_lock ;
 int list_add_tail (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void keyring_publish_name(struct key *keyring)
{
 struct user_namespace *ns = current_user_ns();

 if (keyring->description &&
     keyring->description[0] &&
     keyring->description[0] != '.') {
  write_lock(&keyring_name_lock);
  list_add_tail(&keyring->name_link, &ns->keyring_name_list);
  write_unlock(&keyring_name_lock);
 }
}
