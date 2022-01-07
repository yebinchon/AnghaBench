; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_buf_copy_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_buf_copy_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_buf_copy_type(%struct.xfs_buf* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  %6 = alloca %struct.xfs_buf_log_item*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 0
  %10 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %9, align 8
  store %struct.xfs_buf_log_item* %10, %struct.xfs_buf_log_item** %5, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 0
  %13 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %12, align 8
  store %struct.xfs_buf_log_item* %13, %struct.xfs_buf_log_item** %6, align 8
  %14 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %14, i32 0, i32 0
  %16 = call i32 @xfs_blft_from_flags(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @xfs_blft_to_flags(i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @xfs_blft_from_flags(i32*) #1

declare dso_local i32 @xfs_blft_to_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
