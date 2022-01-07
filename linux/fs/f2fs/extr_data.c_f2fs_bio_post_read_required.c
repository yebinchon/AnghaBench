
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_status; scalar_t__ bi_private; } ;



__attribute__((used)) static bool f2fs_bio_post_read_required(struct bio *bio)
{
 return bio->bi_private && !bio->bi_status;
}
