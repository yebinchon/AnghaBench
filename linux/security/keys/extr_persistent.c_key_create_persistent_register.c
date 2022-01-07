
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {struct key* persistent_keyring_register; } ;
struct key {int dummy; } ;


 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_POS_ALL ;
 int KEY_POS_SETATTR ;
 int KEY_USR_READ ;
 int KEY_USR_VIEW ;
 int KGIDT_INIT (int ) ;
 int KUIDT_INIT (int ) ;
 int PTR_ERR (struct key*) ;
 int current_cred () ;
 struct key* keyring_alloc (char*,int ,int ,int ,int,int ,int *,int *) ;

__attribute__((used)) static int key_create_persistent_register(struct user_namespace *ns)
{
 struct key *reg = keyring_alloc(".persistent_register",
     KUIDT_INIT(0), KGIDT_INIT(0),
     current_cred(),
     ((KEY_POS_ALL & ~KEY_POS_SETATTR) |
      KEY_USR_VIEW | KEY_USR_READ),
     KEY_ALLOC_NOT_IN_QUOTA, ((void*)0), ((void*)0));
 if (IS_ERR(reg))
  return PTR_ERR(reg);

 ns->persistent_keyring_register = reg;
 return 0;
}
