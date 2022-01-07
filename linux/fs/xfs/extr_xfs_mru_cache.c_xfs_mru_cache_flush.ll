; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mru_cache = type { i32, i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mru_cache*)* @xfs_mru_cache_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_mru_cache_flush(%struct.xfs_mru_cache* %0) #0 {
  %2 = alloca %struct.xfs_mru_cache*, align 8
  store %struct.xfs_mru_cache* %0, %struct.xfs_mru_cache** %2, align 8
  %3 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %4 = icmp ne %struct.xfs_mru_cache* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %47

11:                                               ; preds = %5
  %12 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %21 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %23, i32 0, i32 3
  %25 = call i32 @cancel_delayed_work_sync(i32* %24)
  %26 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %27 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  br label %29

29:                                               ; preds = %19, %11
  %30 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %33 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %31, %39
  %41 = call i32 @_xfs_mru_cache_migrate(%struct.xfs_mru_cache* %30, i64 %40)
  %42 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %43 = call i32 @_xfs_mru_cache_clear_reap_list(%struct.xfs_mru_cache* %42)
  %44 = load %struct.xfs_mru_cache*, %struct.xfs_mru_cache** %2, align 8
  %45 = getelementptr inbounds %struct.xfs_mru_cache, %struct.xfs_mru_cache* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @_xfs_mru_cache_migrate(%struct.xfs_mru_cache*, i64) #1

declare dso_local i32 @_xfs_mru_cache_clear_reap_list(%struct.xfs_mru_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
