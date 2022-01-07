; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log.h_xlog_copy_iovec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log.h_xlog_copy_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_vec = type { i32 }
%struct.xfs_log_iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xfs_log_vec*, %struct.xfs_log_iovec**, i32, i8*, i32)* @xlog_copy_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xlog_copy_iovec(%struct.xfs_log_vec* %0, %struct.xfs_log_iovec** %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_log_vec*, align 8
  %7 = alloca %struct.xfs_log_iovec**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.xfs_log_vec* %0, %struct.xfs_log_vec** %6, align 8
  store %struct.xfs_log_iovec** %1, %struct.xfs_log_iovec*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %6, align 8
  %13 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @xlog_prepare_iovec(%struct.xfs_log_vec* %12, %struct.xfs_log_iovec** %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @memcpy(i8* %16, i8* %17, i32 %18)
  %20 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %6, align 8
  %21 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %7, align 8
  %22 = load %struct.xfs_log_iovec*, %struct.xfs_log_iovec** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @xlog_finish_iovec(%struct.xfs_log_vec* %20, %struct.xfs_log_iovec* %22, i32 %23)
  %25 = load i8*, i8** %11, align 8
  ret i8* %25
}

declare dso_local i8* @xlog_prepare_iovec(%struct.xfs_log_vec*, %struct.xfs_log_iovec**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xlog_finish_iovec(%struct.xfs_log_vec*, %struct.xfs_log_iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
