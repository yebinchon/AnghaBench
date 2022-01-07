; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_alloc_buftarg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_alloc_buftarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__, %struct.dax_device*, %struct.block_device*, i32, %struct.xfs_mount* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.block_device = type { i32 }
%struct.dax_device = type { i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xfs_buftarg_shrink_count = common dso_local global i32 0, align 4
@xfs_buftarg_shrink_scan = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4
@SHRINKER_NUMA_AWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xfs_alloc_buftarg(%struct.xfs_mount* %0, %struct.block_device* %1, %struct.dax_device* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.dax_device*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store %struct.dax_device* %2, %struct.dax_device** %7, align 8
  %9 = load i32, i32* @KM_NOFS, align 4
  %10 = call %struct.TYPE_7__* @kmem_zalloc(i32 56, i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store %struct.xfs_mount* %11, %struct.xfs_mount** %13, align 8
  %14 = load %struct.block_device*, %struct.block_device** %6, align 8
  %15 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.block_device*, %struct.block_device** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  store %struct.block_device* %19, %struct.block_device** %21, align 8
  %22 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store %struct.dax_device* %22, %struct.dax_device** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = load %struct.block_device*, %struct.block_device** %6, align 8
  %27 = call i64 @xfs_setsize_buftarg_early(%struct.TYPE_7__* %25, %struct.block_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %75

30:                                               ; preds = %3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i64 @list_lru_init(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %75

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @percpu_counter_init(i32* %38, i32 0, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %71

43:                                               ; preds = %36
  %44 = load i32, i32* @xfs_buftarg_shrink_count, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @xfs_buftarg_shrink_scan, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @DEFAULT_SEEKS, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @SHRINKER_NUMA_AWARE, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = call i64 @register_shrinker(%struct.TYPE_8__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  br label %67

65:                                               ; preds = %43
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %4, align 8
  br label %78

67:                                               ; preds = %64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = call i32 @percpu_counter_destroy(i32* %69)
  br label %71

71:                                               ; preds = %67, %42
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @list_lru_destroy(i32* %73)
  br label %75

75:                                               ; preds = %71, %35, %29
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = call i32 @kmem_free(%struct.TYPE_7__* %76)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %78

78:                                               ; preds = %75, %65
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %79
}

declare dso_local %struct.TYPE_7__* @kmem_zalloc(i32, i32) #1

declare dso_local i64 @xfs_setsize_buftarg_early(%struct.TYPE_7__*, %struct.block_device*) #1

declare dso_local i64 @list_lru_init(i32*) #1

declare dso_local i64 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i64 @register_shrinker(%struct.TYPE_8__*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @list_lru_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
