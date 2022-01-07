
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio {int dummy; } ;
struct bio {int dummy; } ;


 struct bio* dio_await_one (struct dio*) ;
 int dio_bio_complete (struct dio*,struct bio*) ;

__attribute__((used)) static void dio_await_completion(struct dio *dio)
{
 struct bio *bio;
 do {
  bio = dio_await_one(dio);
  if (bio)
   dio_bio_complete(dio, bio);
 } while (bio);
}
