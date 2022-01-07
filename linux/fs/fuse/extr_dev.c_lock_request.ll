; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_lock_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@FR_ABORTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FR_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_req*)* @lock_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_request(%struct.fuse_req* %0) #0 {
  %2 = alloca %struct.fuse_req*, align 8
  %3 = alloca i32, align 4
  store %struct.fuse_req* %0, %struct.fuse_req** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %5 = icmp ne %struct.fuse_req* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %8 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i32, i32* @FR_ABORTED, align 4
  %12 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %13 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %6
  %20 = load i32, i32* @FR_LOCKED, align 4
  %21 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %22 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %21, i32 0, i32 1
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %26 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
