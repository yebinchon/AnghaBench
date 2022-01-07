; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat_iwalk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat_iwalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_trans*, i32, i8*)* @xfs_bulkstat_iwalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_bulkstat_iwalk(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @xfs_bulkstat_one_int(%struct.xfs_mount* %11, %struct.xfs_trans* %12, i32 %13, i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @xfs_bulkstat_one_int(%struct.xfs_mount*, %struct.xfs_trans*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
