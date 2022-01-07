; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mru_cache = type { i32, i32, i64 }
%struct.xfs_mru_cache_elem = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mru_cache_insert(%struct.xfs_mru_cache* %0, i64 %1, %struct.xfs_mru_cache_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_mru_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_mru_cache_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_mru_cache* %0, %struct.xfs_mru_cache** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xfs_mru_cache_elem* %2, %struct.xfs_mru_cache_elem** %7, align 8
  %9 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %10 = icmp ne %struct.xfs_mru_cache* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %21 = icmp ne %struct.xfs_mru_cache* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %22
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call i64 @radix_tree_preload(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %30
  %38 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_mru_cache_elem, %struct.xfs_mru_cache_elem* %38, i32 0, i32 1
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %7, align 8
  %43 = getelementptr inbounds %struct.xfs_mru_cache_elem, %struct.xfs_mru_cache_elem* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %47, i32 0, i32 1
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %7, align 8
  %51 = call i32 @radix_tree_insert(i32* %48, i64 %49, %struct.xfs_mru_cache_elem* %50)
  store i32 %51, i32* %8, align 4
  %52 = call i32 (...) @radix_tree_preload_end()
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %37
  %56 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %57 = load %struct.xfs_mru_cache_elem*, %struct.xfs_mru_cache_elem** %7, align 8
  %58 = call i32 @_xfs_mru_cache_list_insert(%struct.xfs_mru_cache* %56, %struct.xfs_mru_cache_elem* %57)
  br label %59

59:                                               ; preds = %55, %37
  %60 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %5, align 8
  %61 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %34, %27
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @radix_tree_preload(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.xfs_mru_cache_elem*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @_xfs_mru_cache_list_insert(%struct.xfs_mru_cache*, %struct.xfs_mru_cache_elem*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
