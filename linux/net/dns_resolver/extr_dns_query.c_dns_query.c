
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time64_t ;
struct user_key_payload {int datalen; int data; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct key** data; } ;
struct key {int sem; int expiry; TYPE_1__ payload; int perm; int flags; } ;
struct cred {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_FLAG_ROOT_CAN_INVAL ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 size_t dns_key_error ;
 int dns_resolver_cache ;
 int down_read (int *) ;
 int kdebug (char*,char*,char const*) ;
 int kenter (char*,char const*,int,int,char const*,size_t,char const*) ;
 int key_invalidate (struct key*) ;
 int key_put (struct key*) ;
 int key_type_dns_resolver ;
 int key_validate (struct key*) ;
 int kfree (char*) ;
 int kleave (char*,int) ;
 char* kmalloc (size_t,int ) ;
 char* kmemdup_nul (int ,int,int ) ;
 int memcpy (char*,char const*,size_t) ;
 struct cred* override_creds (int ) ;
 struct key* request_key_net (int *,char*,struct net*,char const*) ;
 int revert_creds (struct cred const*) ;
 int set_bit (int ,int *) ;
 size_t strlen (char const*) ;
 int up_read (int *) ;
 struct user_key_payload* user_key_payload_locked (struct key*) ;

int dns_query(struct net *net,
       const char *type, const char *name, size_t namelen,
       const char *options, char **_result, time64_t *_expiry,
       bool invalidate)
{
 struct key *rkey;
 struct user_key_payload *upayload;
 const struct cred *saved_cred;
 size_t typelen, desclen;
 char *desc, *cp;
 int ret, len;

 kenter("%s,%*.*s,%zu,%s",
        type, (int)namelen, (int)namelen, name, namelen, options);

 if (!name || namelen == 0)
  return -EINVAL;


 typelen = 0;
 desclen = 0;
 if (type) {
  typelen = strlen(type);
  if (typelen < 1)
   return -EINVAL;
  desclen += typelen + 1;
 }

 if (namelen < 3 || namelen > 255)
  return -EINVAL;
 desclen += namelen + 1;

 desc = kmalloc(desclen, GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 cp = desc;
 if (type) {
  memcpy(cp, type, typelen);
  cp += typelen;
  *cp++ = ':';
 }
 memcpy(cp, name, namelen);
 cp += namelen;
 *cp = '\0';

 if (!options)
  options = "";
 kdebug("call request_key(,%s,%s)", desc, options);




 saved_cred = override_creds(dns_resolver_cache);
 rkey = request_key_net(&key_type_dns_resolver, desc, net, options);
 revert_creds(saved_cred);
 kfree(desc);
 if (IS_ERR(rkey)) {
  ret = PTR_ERR(rkey);
  goto out;
 }

 down_read(&rkey->sem);
 set_bit(KEY_FLAG_ROOT_CAN_INVAL, &rkey->flags);
 rkey->perm |= KEY_USR_VIEW;

 ret = key_validate(rkey);
 if (ret < 0)
  goto put;


 ret = PTR_ERR(rkey->payload.data[dns_key_error]);
 if (ret)
  goto put;

 upayload = user_key_payload_locked(rkey);
 len = upayload->datalen;

 if (_result) {
  ret = -ENOMEM;
  *_result = kmemdup_nul(upayload->data, len, GFP_KERNEL);
  if (!*_result)
   goto put;
 }

 if (_expiry)
  *_expiry = rkey->expiry;

 ret = len;
put:
 up_read(&rkey->sem);
 if (invalidate)
  key_invalidate(rkey);
 key_put(rkey);
out:
 kleave(" = %d", ret);
 return ret;
}
