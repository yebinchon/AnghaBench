; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_submit_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomap_dio = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iomap = type { i32 }
%struct.bio = type { i32 }

@IOCB_HIPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iomap_dio*, %struct.iomap*, %struct.bio*)* @iomap_dio_submit_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_dio_submit_bio(%struct.iomap_dio* %0, %struct.iomap* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.iomap_dio*, align 8
  %5 = alloca %struct.iomap*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.iomap_dio* %0, %struct.iomap_dio** %4, align 8
  store %struct.iomap* %1, %struct.iomap** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load %struct.iomap_dio*, %struct.iomap_dio** %4, align 8
  %8 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %7, i32 0, i32 2
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.iomap_dio*, %struct.iomap_dio** %4, align 8
  %11 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IOCB_HIPRI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = load %struct.iomap_dio*, %struct.iomap_dio** %4, align 8
  %21 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @bio_set_polled(%struct.bio* %19, %struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.iomap*, %struct.iomap** %5, align 8
  %26 = getelementptr inbounds %struct.iomap, %struct.iomap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bdev_get_queue(i32 %27)
  %29 = load %struct.iomap_dio*, %struct.iomap_dio** %4, align 8
  %30 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = call i32 @submit_bio(%struct.bio* %32)
  %34 = load %struct.iomap_dio*, %struct.iomap_dio** %4, align 8
  %35 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @bio_set_polled(%struct.bio*, %struct.TYPE_4__*) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
