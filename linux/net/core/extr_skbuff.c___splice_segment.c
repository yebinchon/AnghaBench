
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_pipe_desc {int dummy; } ;
struct sock {int dummy; } ;
struct pipe_inode_info {int dummy; } ;
struct page {int dummy; } ;


 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ spd_fill_page (struct splice_pipe_desc*,struct pipe_inode_info*,struct page*,unsigned int*,unsigned int,int,struct sock*) ;

__attribute__((used)) static bool __splice_segment(struct page *page, unsigned int poff,
        unsigned int plen, unsigned int *off,
        unsigned int *len,
        struct splice_pipe_desc *spd, bool linear,
        struct sock *sk,
        struct pipe_inode_info *pipe)
{
 if (!*len)
  return 1;


 if (*off >= plen) {
  *off -= plen;
  return 0;
 }


 poff += *off;
 plen -= *off;
 *off = 0;

 do {
  unsigned int flen = min(*len, plen);

  if (spd_fill_page(spd, pipe, page, &flen, poff,
      linear, sk))
   return 1;
  poff += flen;
  plen -= flen;
  *len -= flen;
 } while (*len && plen);

 return 0;
}
