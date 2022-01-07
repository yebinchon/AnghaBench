; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_retry_timeout_seconds_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_retry_timeout_seconds_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.xfs_error_cfg = type { i64 }

@XFS_ERR_RETRY_FOREVER = common dso_local global i64 0, align 8
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, i8*)* @retry_timeout_seconds_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_timeout_seconds_show(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_error_cfg*, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.kobject*, %struct.kobject** %3, align 8
  %8 = call %struct.xfs_error_cfg* @to_error_cfg(%struct.kobject* %7)
  store %struct.xfs_error_cfg* %8, %struct.xfs_error_cfg** %6, align 8
  %9 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %6, align 8
  %10 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFS_ERR_RETRY_FOREVER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @jiffies_to_msecs(i64 %18)
  %20 = load i32, i32* @MSEC_PER_SEC, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  ret i32 %26
}

declare dso_local %struct.xfs_error_cfg* @to_error_cfg(%struct.kobject*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
