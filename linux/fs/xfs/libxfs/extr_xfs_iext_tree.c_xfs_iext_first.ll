; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_first.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_first(%struct.xfs_ifork* %0, %struct.xfs_iext_cursor* %1) #0 {
  %3 = alloca %struct.xfs_ifork*, align 8
  %4 = alloca %struct.xfs_iext_cursor*, align 8
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %3, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %4, align 8
  %5 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %8 = call i32 @xfs_iext_find_first_leaf(%struct.xfs_ifork* %7)
  %9 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  ret void
}

declare dso_local i32 @xfs_iext_find_first_leaf(%struct.xfs_ifork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
