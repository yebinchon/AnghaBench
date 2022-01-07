; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_retry_timeout_seconds_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_retry_timeout_seconds_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.xfs_error_cfg = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_ERR_RETRY_FOREVER = common dso_local global i64 0, align 8
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, i8*, i64)* @retry_timeout_seconds_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_timeout_seconds_store(%struct.kobject* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_error_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.xfs_error_cfg* @to_error_cfg(%struct.kobject* %11)
  store %struct.xfs_error_cfg* %12, %struct.xfs_error_cfg** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kstrtoint(i8* %13, i32 0, i32* %10)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, -1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 86400
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* @XFS_ERR_RETRY_FOREVER, align 8
  %33 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %8, align 8
  %34 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %50

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MSEC_PER_SEC, align 4
  %38 = mul nsw i32 %36, %37
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  %40 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %8, align 8
  %41 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MSEC_PER_SEC, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i64 @msecs_to_jiffies(i32 %44)
  %46 = load i64, i64* @LONG_MAX, align 8
  %47 = icmp slt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  br label %50

50:                                               ; preds = %35, %31
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %25, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.xfs_error_cfg* @to_error_cfg(%struct.kobject*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
