
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDLM_LVB_SIZE ;
 int JID_BITMAP_OFFSET ;
 int memchr_inv (char*,int ,int) ;

__attribute__((used)) static int all_jid_bits_clear(char *lvb)
{
 return !memchr_inv(lvb + JID_BITMAP_OFFSET, 0,
   GDLM_LVB_SIZE - JID_BITMAP_OFFSET);
}
