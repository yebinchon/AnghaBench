
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct tag {int dummy; } ;
struct TYPE_2__ {int tagChecksum; int descCRCLength; int descCRC; } ;
struct logicalVolIntegrityDesc {TYPE_1__ descTag; int recordingDateAndTime; } ;


 int cpu_to_le16 (int ) ;
 int crc_itu_t (int ,char*,int ) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int le16_to_cpu (int ) ;
 int udf_tag_checksum (TYPE_1__*) ;
 int udf_time_to_disk_stamp (int *,struct timespec64) ;

__attribute__((used)) static void udf_finalize_lvid(struct logicalVolIntegrityDesc *lvid)
{
 struct timespec64 ts;

 ktime_get_real_ts64(&ts);
 udf_time_to_disk_stamp(&lvid->recordingDateAndTime, ts);
 lvid->descTag.descCRC = cpu_to_le16(
  crc_itu_t(0, (char *)lvid + sizeof(struct tag),
   le16_to_cpu(lvid->descTag.descCRCLength)));
 lvid->descTag.tagChecksum = udf_tag_checksum(&lvid->descTag);
}
