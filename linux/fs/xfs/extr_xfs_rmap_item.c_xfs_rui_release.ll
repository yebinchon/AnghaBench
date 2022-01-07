; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_rui_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_rui_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rui_log_item = type { i32, i32 }

@SHUTDOWN_LOG_IO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_rui_release(%struct.xfs_rui_log_item* %0) #0 {
  %2 = alloca %struct.xfs_rui_log_item*, align 8
  store %struct.xfs_rui_log_item* %0, %struct.xfs_rui_log_item** %2, align 8
  %3 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %3, i32 0, i32 1
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp sgt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %9, i32 0, i32 1
  %11 = call i64 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %2, align 8
  %15 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %14, i32 0, i32 0
  %16 = load i32, i32* @SHUTDOWN_LOG_IO_ERROR, align 4
  %17 = call i32 @xfs_trans_ail_remove(i32* %15, i32 %16)
  %18 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %2, align 8
  %19 = call i32 @xfs_rui_item_free(%struct.xfs_rui_log_item* %18)
  br label %20

20:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @xfs_trans_ail_remove(i32*, i32) #1

declare dso_local i32 @xfs_rui_item_free(%struct.xfs_rui_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
