; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xfs_log_item_in_current_chkpt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xfs_log_item_in_current_chkpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.xfs_cil_ctx* }
%struct.xfs_cil_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_log_item_in_current_chkpt(%struct.xfs_log_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_log_item*, align 8
  %4 = alloca %struct.xfs_cil_ctx*, align 8
  store %struct.xfs_log_item* %0, %struct.xfs_log_item** %3, align 8
  %5 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %5, i32 0, i32 2
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %18, align 8
  store %struct.xfs_cil_ctx* %19, %struct.xfs_cil_ctx** %4, align 8
  %20 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @XFS_LSN_CMP(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @XFS_LSN_CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
