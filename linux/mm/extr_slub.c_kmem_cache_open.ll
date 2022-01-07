; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_kmem_cache_open.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_kmem_cache_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@disable_higher_order_debug = common dso_local global i64 0, align 8
@DEBUG_METADATA_FLAGS = common dso_local global i32 0, align 4
@slab_state = common dso_local global i64 0, align 8
@UP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SLAB_NO_CMPXCHG = common dso_local global i32 0, align 4
@__CMPXCHG_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32)* @kmem_cache_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmem_cache_open(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %7 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %11 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %14 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kmem_cache_flags(i32 %8, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %18 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %20 = call i32 @calculate_sizes(%struct.kmem_cache* %19, i32 -1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %83

23:                                               ; preds = %2
  %24 = load i64, i64* @disable_higher_order_debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %28 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @get_order(i32 %29)
  %31 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %32 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @get_order(i32 %33)
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load i32, i32* @DEBUG_METADATA_FLAGS, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %40 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %44 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %46 = call i32 @calculate_sizes(%struct.kmem_cache* %45, i32 -1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %83

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %23
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %54 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ilog2(i32 %55)
  %57 = sdiv i32 %56, 2
  %58 = call i32 @set_min_partial(%struct.kmem_cache* %52, i32 %57)
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %60 = call i32 @set_cpu_partial(%struct.kmem_cache* %59)
  %61 = load i64, i64* @slab_state, align 8
  %62 = load i64, i64* @UP, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %51
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %66 = call i64 @init_cache_random_seq(%struct.kmem_cache* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %83

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %72 = call i32 @init_kmem_cache_nodes(%struct.kmem_cache* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %83

75:                                               ; preds = %70
  %76 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %77 = call i64 @alloc_kmem_cache_cpus(%struct.kmem_cache* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %86

80:                                               ; preds = %75
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %82 = call i32 @free_kmem_cache_nodes(%struct.kmem_cache* %81)
  br label %83

83:                                               ; preds = %80, %74, %68, %48, %22
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @kmem_cache_flags(i32, i32, i32, i32) #1

declare dso_local i32 @calculate_sizes(%struct.kmem_cache*, i32) #1

declare dso_local i64 @get_order(i32) #1

declare dso_local i32 @set_min_partial(%struct.kmem_cache*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @set_cpu_partial(%struct.kmem_cache*) #1

declare dso_local i64 @init_cache_random_seq(%struct.kmem_cache*) #1

declare dso_local i32 @init_kmem_cache_nodes(%struct.kmem_cache*) #1

declare dso_local i64 @alloc_kmem_cache_cpus(%struct.kmem_cache*) #1

declare dso_local i32 @free_kmem_cache_nodes(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
