; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mbcache.c_mb_cache_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mbcache.c_mb_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb_cache = type { i32, i64, i32, %struct.mb_cache*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mb_cache_count = common dso_local global i32 0, align 4
@mb_cache_scan = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4
@mb_cache_shrink_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mb_cache* @mb_cache_create(i32 %0) #0 {
  %2 = alloca %struct.mb_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mb_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = shl i64 1, %8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mb_cache* @kzalloc(i32 56, i32 %10)
  store %struct.mb_cache* %11, %struct.mb_cache** %4, align 8
  %12 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %13 = icmp ne %struct.mb_cache* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %86

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %18 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = shl i64 %19, 4
  %21 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %22 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %24 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %27 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %26, i32 0, i32 5
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.mb_cache* @kmalloc_array(i64 %29, i32 4, i32 %30)
  %32 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %33 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %32, i32 0, i32 3
  store %struct.mb_cache* %31, %struct.mb_cache** %33, align 8
  %34 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %35 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %34, i32 0, i32 3
  %36 = load %struct.mb_cache*, %struct.mb_cache** %35, align 8
  %37 = icmp ne %struct.mb_cache* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %15
  %39 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %40 = call i32 @kfree(%struct.mb_cache* %39)
  br label %86

41:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %48 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %47, i32 0, i32 3
  %49 = load %struct.mb_cache*, %struct.mb_cache** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %49, i64 %50
  %52 = call i32 @INIT_HLIST_BL_HEAD(%struct.mb_cache* %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %42

56:                                               ; preds = %42
  %57 = load i32, i32* @mb_cache_count, align 4
  %58 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %59 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @mb_cache_scan, align 4
  %62 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %63 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @DEFAULT_SEEKS, align 4
  %66 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %67 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %70 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %69, i32 0, i32 4
  %71 = call i64 @register_shrinker(%struct.TYPE_2__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %56
  %74 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %75 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %74, i32 0, i32 3
  %76 = load %struct.mb_cache*, %struct.mb_cache** %75, align 8
  %77 = call i32 @kfree(%struct.mb_cache* %76)
  %78 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %79 = call i32 @kfree(%struct.mb_cache* %78)
  br label %86

80:                                               ; preds = %56
  %81 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  %82 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %81, i32 0, i32 2
  %83 = load i32, i32* @mb_cache_shrink_worker, align 4
  %84 = call i32 @INIT_WORK(i32* %82, i32 %83)
  %85 = load %struct.mb_cache*, %struct.mb_cache** %4, align 8
  store %struct.mb_cache* %85, %struct.mb_cache** %2, align 8
  br label %87

86:                                               ; preds = %73, %38, %14
  store %struct.mb_cache* null, %struct.mb_cache** %2, align 8
  br label %87

87:                                               ; preds = %86, %80
  %88 = load %struct.mb_cache*, %struct.mb_cache** %2, align 8
  ret %struct.mb_cache* %88
}

declare dso_local %struct.mb_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.mb_cache* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.mb_cache*) #1

declare dso_local i32 @INIT_HLIST_BL_HEAD(%struct.mb_cache*) #1

declare dso_local i64 @register_shrinker(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
