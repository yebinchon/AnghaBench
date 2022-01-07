
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_md5sig {int tcpm_keylen; int tcpm_key; int tcpm_addr; } ;
typedef int socklen_t ;
typedef int md5sig ;


 scalar_t__ ENOENT ;
 int IPPROTO_TCP ;
 int TCP_MD5SIG ;
 scalar_t__ errno ;
 int log_err_errno (char*) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct tcp_md5sig*,int ,int) ;
 int setsockopt (int,int ,int ,struct tcp_md5sig*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int tcp_md5sig(int sd, void *addr, socklen_t alen, const char *password)
{
 struct tcp_md5sig md5sig;
 int keylen = password ? strlen(password) : 0;
 int rc;

 memset(&md5sig, 0, sizeof(md5sig));
 memcpy(&md5sig.tcpm_addr, addr, alen);
 md5sig.tcpm_keylen = keylen;

 if (keylen)
  memcpy(md5sig.tcpm_key, password, keylen);

 rc = setsockopt(sd, IPPROTO_TCP, TCP_MD5SIG, &md5sig, sizeof(md5sig));
 if (rc < 0) {

  if (errno == ENOENT)
   rc = 0;
  else
   log_err_errno("setsockopt(TCP_MD5SIG)");
 }

 return rc;
}
