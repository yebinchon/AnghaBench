; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_dirty_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_dirty_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf_log_item = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_item_dirty_format(%struct.xfs_buf_log_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_buf_log_item*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_buf_log_item* %0, %struct.xfs_buf_log_item** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xfs_bitmap_empty(i32 %19, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %36

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @xfs_bitmap_empty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
