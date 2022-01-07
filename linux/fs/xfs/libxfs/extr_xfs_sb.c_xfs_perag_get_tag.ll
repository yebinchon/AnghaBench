; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_perag_get_tag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_perag_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i32, i32 }
%struct.xfs_mount = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_perag* @xfs_perag_get_tag(%struct.xfs_mount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_perag*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_perag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = bitcast %struct.xfs_perag** %8 to i8**
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @radix_tree_gang_lookup_tag(i32* %13, i8** %14, i32 %15, i32 1, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @rcu_read_unlock()
  store %struct.xfs_perag* null, %struct.xfs_perag** %4, align 8
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.xfs_perag*, %struct.xfs_perag** %8, align 8
  %24 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %23, i32 0, i32 1
  %25 = call i32 @atomic_inc_return(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %28 = load %struct.xfs_perag*, %struct.xfs_perag** %8, align 8
  %29 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @_RET_IP_, align 4
  %33 = call i32 @trace_xfs_perag_get_tag(%struct.xfs_mount* %27, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.xfs_perag*, %struct.xfs_perag** %8, align 8
  store %struct.xfs_perag* %34, %struct.xfs_perag** %4, align 8
  br label %35

35:                                               ; preds = %22, %20
  %36 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  ret %struct.xfs_perag* %36
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @radix_tree_gang_lookup_tag(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @trace_xfs_perag_get_tag(%struct.xfs_mount*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
