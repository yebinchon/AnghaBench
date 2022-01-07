; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mru_cache_elem = type { i32 }
%struct.xfs_mru_cache = type { i32, i32, i64 }

@mru_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_mru_cache_elem* @xfs_mru_cache_lookup(%struct.xfs_mru_cache* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_mru_cache_elem*, align 8
  %4 = alloca %struct.xfs_mru_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xfs_mru_cache_elem*, align 8
  store %struct.xfs_mru_cache* %0, %struct.xfs_mru_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %8 = icmp ne %struct.xfs_mru_cache* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %19 = icmp ne %struct.xfs_mru_cache* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %14
  store %struct.xfs_mru_cache_elem* null, %struct.xfs_mru_cache_elem** %3, align 8
  br label %51

26:                                               ; preds = %20
  %27 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.xfs_mru_cache_elem* @radix_tree_lookup(i32* %31, i64 %32)
  store %struct.xfs_mru_cache_elem* %33, %struct.xfs_mru_cache_elem** %6, align 8
  %34 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %6, align 8
  %35 = icmp ne %struct.xfs_mru_cache_elem* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %6, align 8
  %38 = getelementptr inbounds %struct.xfs_mru_cache_elem, %struct.xfs_mru_cache_elem* %37, i32 0, i32 0
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %41 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %6, align 8
  %42 = call i32 @_xfs_mru_cache_list_insert(%struct.xfs_mru_cache* %40, %struct.xfs_mru_cache_elem* %41)
  %43 = load i32, i32* @mru_lock, align 4
  %44 = call i32 @__release(i32 %43)
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %6, align 8
  store %struct.xfs_mru_cache_elem* %50, %struct.xfs_mru_cache_elem** %3, align 8
  br label %51

51:                                               ; preds = %49, %25
  %52 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %3, align 8
  ret %struct.xfs_mru_cache_elem* %52
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.xfs_mru_cache_elem* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @_xfs_mru_cache_list_insert(%struct.xfs_mru_cache*, %struct.xfs_mru_cache_elem*) #1

declare dso_local i32 @__release(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
