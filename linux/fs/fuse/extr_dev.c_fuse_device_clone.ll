; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_device_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_device_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.file = type { %struct.fuse_dev* }
%struct.fuse_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.file*)* @fuse_device_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_device_clone(%struct.fuse_conn* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fuse_dev*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.fuse_dev*, %struct.fuse_dev** %8, align 8
  %10 = icmp ne %struct.fuse_dev* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %16 = call %struct.fuse_dev* @fuse_dev_alloc_install(%struct.fuse_conn* %15)
  store %struct.fuse_dev* %16, %struct.fuse_dev** %6, align 8
  %17 = load %struct.fuse_dev*, %struct.fuse_dev** %6, align 8
  %18 = icmp ne %struct.fuse_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.fuse_dev*, %struct.fuse_dev** %6, align 8
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store %struct.fuse_dev* %23, %struct.fuse_dev** %25, align 8
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %26, i32 0, i32 0
  %28 = call i32 @atomic_inc(i32* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.fuse_dev* @fuse_dev_alloc_install(%struct.fuse_conn*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
