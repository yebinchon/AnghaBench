; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_buf_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_buf_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { %struct.xfs_trans*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_buf_set_type(%struct.xfs_trans* %0, %struct.xfs_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 1
  %10 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %9, align 8
  store %struct.xfs_buf_log_item* %10, %struct.xfs_buf_log_item** %7, align 8
  %11 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %12 = icmp ne %struct.xfs_trans* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 0
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %16, align 8
  %18 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %19 = icmp eq %struct.xfs_trans* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %23 = icmp ne %struct.xfs_buf_log_item* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %27 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %26, i32 0, i32 1
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp sgt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @xfs_blft_to_flags(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @xfs_blft_to_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
