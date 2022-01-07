; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_ordered_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_ordered_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { %struct.xfs_trans*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32, i32 }

@XFS_BLI_ORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_trans_ordered_buf(%struct.xfs_trans* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 1
  %9 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %8, align 8
  store %struct.xfs_buf_log_item* %9, %struct.xfs_buf_log_item** %6, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 0
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %14 = icmp eq %struct.xfs_trans* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %18 = icmp ne %struct.xfs_buf_log_item* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %22 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %21, i32 0, i32 1
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %28 = call i64 @xfs_buf_item_dirty_format(%struct.xfs_buf_log_item* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

31:                                               ; preds = %2
  %32 = load i32, i32* @XFS_BLI_ORDERED, align 4
  %33 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %34 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %38 = call i32 @trace_xfs_buf_item_ordered(%struct.xfs_buf_log_item* %37)
  %39 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %41 = call i32 @xfs_trans_dirty_buf(%struct.xfs_trans* %39, %struct.xfs_buf* %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @xfs_buf_item_dirty_format(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @trace_xfs_buf_item_ordered(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @xfs_trans_dirty_buf(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
