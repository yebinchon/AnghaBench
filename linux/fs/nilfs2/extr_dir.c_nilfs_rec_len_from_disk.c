
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 unsigned int NILFS_MAX_REC_LEN ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int nilfs_rec_len_from_disk(__le16 dlen)
{
 unsigned int len = le16_to_cpu(dlen);





 return len;
}
