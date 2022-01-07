; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_log_item_batch_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_log_item_batch_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i32 }
%struct.xfs_ail_cursor = type { i32 }
%struct.xfs_log_item = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_log_item*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_ail*, %struct.xfs_ail_cursor*, %struct.xfs_log_item**, i32, i32)* @xfs_log_item_batch_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_log_item_batch_insert(%struct.xfs_ail* %0, %struct.xfs_ail_cursor* %1, %struct.xfs_log_item** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_ail*, align 8
  %7 = alloca %struct.xfs_ail_cursor*, align 8
  %8 = alloca %struct.xfs_log_item**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %6, align 8
  store %struct.xfs_ail_cursor* %1, %struct.xfs_ail_cursor** %7, align 8
  store %struct.xfs_log_item** %2, %struct.xfs_log_item*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.xfs_ail*, %struct.xfs_ail** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.xfs_ail*, %struct.xfs_ail** %6, align 8
  %17 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %7, align 8
  %18 = load %struct.xfs_log_item**, %struct.xfs_log_item*** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @xfs_trans_ail_update_bulk(%struct.xfs_ail* %16, %struct.xfs_ail_cursor* %17, %struct.xfs_log_item** %18, i32 %19, i32 %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %47, %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.xfs_log_item**, %struct.xfs_log_item*** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xfs_log_item*, %struct.xfs_log_item** %27, i64 %29
  %31 = load %struct.xfs_log_item*, %struct.xfs_log_item** %30, align 8
  store %struct.xfs_log_item* %31, %struct.xfs_log_item** %12, align 8
  %32 = load %struct.xfs_log_item*, %struct.xfs_log_item** %12, align 8
  %33 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.xfs_log_item*, i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.xfs_log_item*, %struct.xfs_log_item** %12, align 8
  %40 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %42, align 8
  %44 = load %struct.xfs_log_item*, %struct.xfs_log_item** %12, align 8
  %45 = call i32 %43(%struct.xfs_log_item* %44, i32 0)
  br label %46

46:                                               ; preds = %38, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %22

50:                                               ; preds = %22
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xfs_trans_ail_update_bulk(%struct.xfs_ail*, %struct.xfs_ail_cursor*, %struct.xfs_log_item**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
