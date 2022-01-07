; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_defer.c_xfs_defer_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_defer.c_xfs_defer_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_defer_cancel(%struct.xfs_trans* %0) #0 {
  %2 = alloca %struct.xfs_trans*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %2, align 8
  %4 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %4, i32 0, i32 1
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  store %struct.xfs_mount* %6, %struct.xfs_mount** %3, align 8
  %7 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %8 = load i32, i32* @_RET_IP_, align 4
  %9 = call i32 @trace_xfs_defer_cancel(%struct.xfs_trans* %7, i32 %8)
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %12 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %11, i32 0, i32 0
  %13 = call i32 @xfs_defer_cancel_list(%struct.xfs_mount* %10, i32* %12)
  ret void
}

declare dso_local i32 @trace_xfs_defer_cancel(%struct.xfs_trans*, i32) #1

declare dso_local i32 @xfs_defer_cancel_list(%struct.xfs_mount*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
