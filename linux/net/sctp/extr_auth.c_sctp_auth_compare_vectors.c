
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_auth_bytes {int len; scalar_t__* data; } ;
typedef scalar_t__ __u8 ;


 int abs (int) ;
 int memcmp (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int sctp_auth_compare_vectors(struct sctp_auth_bytes *vector1,
         struct sctp_auth_bytes *vector2)
{
 int diff;
 int i;
 const __u8 *longer;

 diff = vector1->len - vector2->len;
 if (diff) {
  longer = (diff > 0) ? vector1->data : vector2->data;





  for (i = 0; i < abs(diff); i++) {
   if (longer[i] != 0)
    return diff;
  }
 }


 return memcmp(vector1->data, vector2->data, vector1->len);
}
