
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_fastopen_cookie {int len; int exp; int val; } ;


 int TCP_FASTOPEN_COOKIE_MAX ;
 int TCP_FASTOPEN_COOKIE_MIN ;
 int memcpy (int ,unsigned char const*,int) ;

__attribute__((used)) static void tcp_parse_fastopen_option(int len, const unsigned char *cookie,
          bool syn, struct tcp_fastopen_cookie *foc,
          bool exp_opt)
{

 if (!foc || !syn || len < 0 || (len & 1))
  return;

 if (len >= TCP_FASTOPEN_COOKIE_MIN &&
     len <= TCP_FASTOPEN_COOKIE_MAX)
  memcpy(foc->val, cookie, len);
 else if (len != 0)
  len = -1;
 foc->len = len;
 foc->exp = exp_opt;
}
