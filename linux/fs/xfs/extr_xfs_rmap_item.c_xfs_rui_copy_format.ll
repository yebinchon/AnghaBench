; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_rui_copy_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_rui_copy_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_iovec = type { i64, %struct.xfs_rui_log_format* }
%struct.xfs_rui_log_format = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rui_copy_format(%struct.xfs_log_iovec* %0, %struct.xfs_rui_log_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_log_iovec*, align 8
  %5 = alloca %struct.xfs_rui_log_format*, align 8
  %6 = alloca %struct.xfs_rui_log_format*, align 8
  %7 = alloca i64, align 8
  store %struct.xfs_log_iovec* %0, %struct.xfs_log_iovec** %4, align 8
  store %struct.xfs_rui_log_format* %1, %struct.xfs_rui_log_format** %5, align 8
  %8 = load %struct.xfs_log_iovec*, %struct.xfs_log_iovec** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_log_iovec, %struct.xfs_log_iovec* %8, i32 0, i32 1
  %10 = load %struct.xfs_rui_log_format*, %struct.xfs_rui_log_format** %9, align 8
  store %struct.xfs_rui_log_format* %10, %struct.xfs_rui_log_format** %6, align 8
  %11 = load %struct.xfs_rui_log_format*, %struct.xfs_rui_log_format** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_rui_log_format, %struct.xfs_rui_log_format* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @xfs_rui_log_format_sizeof(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.xfs_log_iovec*, %struct.xfs_log_iovec** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_log_iovec, %struct.xfs_log_iovec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EFSCORRUPTED, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.xfs_rui_log_format*, %struct.xfs_rui_log_format** %5, align 8
  %25 = load %struct.xfs_rui_log_format*, %struct.xfs_rui_log_format** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @memcpy(%struct.xfs_rui_log_format* %24, %struct.xfs_rui_log_format* %25, i64 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @xfs_rui_log_format_sizeof(i32) #1

declare dso_local i32 @memcpy(%struct.xfs_rui_log_format*, %struct.xfs_rui_log_format*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
