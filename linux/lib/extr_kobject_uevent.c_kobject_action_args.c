
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t UUID_STRING_LEN ;
 char* action_arg_word_end (char const*,char const*,char) ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int,char const*,...) ;
 int kfree (struct kobj_uevent_env*) ;
 struct kobj_uevent_env* kzalloc (int,int ) ;
 int uuid_is_valid (char const*) ;

__attribute__((used)) static int kobject_action_args(const char *buf, size_t count,
          struct kobj_uevent_env **ret_env)
{
 struct kobj_uevent_env *env = ((void*)0);
 const char *next, *buf_end, *key;
 int key_len;
 int r = -EINVAL;

 if (count && (buf[count - 1] == '\n' || buf[count - 1] == '\0'))
  count--;

 if (!count)
  return -EINVAL;

 env = kzalloc(sizeof(*env), GFP_KERNEL);
 if (!env)
  return -ENOMEM;


 if (count < UUID_STRING_LEN || !uuid_is_valid(buf) ||
     add_uevent_var(env, "SYNTH_UUID=%.*s", UUID_STRING_LEN, buf))
  goto out;





 next = buf + UUID_STRING_LEN;
 buf_end = buf + count - 1;

 while (next <= buf_end) {
  if (*next != ' ')
   goto out;


  key = ++next;
  if (key > buf_end)
   goto out;

  buf = next;
  next = action_arg_word_end(buf, buf_end, '=');
  if (!next || next > buf_end || *next != '=')
   goto out;
  key_len = next - buf;


  if (++next > buf_end)
   goto out;

  buf = next;
  next = action_arg_word_end(buf, buf_end, ' ');
  if (!next)
   goto out;

  if (add_uevent_var(env, "SYNTH_ARG_%.*s=%.*s",
       key_len, key, (int) (next - buf), buf))
   goto out;
 }

 r = 0;
out:
 if (r)
  kfree(env);
 else
  *ret_env = env;
 return r;
}
