; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_dev_is_read_only.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_dev_is_read_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i64, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"%s required on read-only device.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"write access unavailable, cannot proceed.\00", align 1
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dev_is_read_only(%struct.xfs_mount* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i8*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @xfs_readonly_buftarg(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @xfs_readonly_buftarg(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @xfs_readonly_buftarg(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22, %11, %2
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_notice(%struct.xfs_mount* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %33 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_notice(%struct.xfs_mount* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EROFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @xfs_readonly_buftarg(i64) #1

declare dso_local i32 @xfs_notice(%struct.xfs_mount*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
