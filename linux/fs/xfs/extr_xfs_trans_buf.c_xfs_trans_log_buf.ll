; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_log_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_log_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32 }

@XFS_BLI_ORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_log_buf(%struct.xfs_trans* %0, %struct.xfs_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 1
  %12 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %11, align 8
  store %struct.xfs_buf_log_item* %12, %struct.xfs_buf_log_item** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BBTOB(i32 %20)
  %22 = icmp slt i32 %17, %21
  br label %23

23:                                               ; preds = %16, %4
  %24 = phi i1 [ false, %4 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %9, align 8
  %28 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XFS_BLI_ORDERED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %38 = call i32 @xfs_trans_dirty_buf(%struct.xfs_trans* %36, %struct.xfs_buf* %37)
  %39 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %9, align 8
  %40 = call i32 @trace_xfs_trans_log_buf(%struct.xfs_buf_log_item* %39)
  %41 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @xfs_buf_item_log(%struct.xfs_buf_log_item* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BBTOB(i32) #1

declare dso_local i32 @xfs_trans_dirty_buf(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @trace_xfs_trans_log_buf(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @xfs_buf_item_log(%struct.xfs_buf_log_item*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
