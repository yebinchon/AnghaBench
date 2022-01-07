; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_workingset.c_count_shadow_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_workingset.c_count_shadow_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32, i64 }

@shadow_nodes = common dso_local global i32 0, align 4
@XA_CHUNK_SHIFT = common dso_local global i32 0, align 4
@SHRINK_EMPTY = common dso_local global i64 0, align 8
@NR_LRU_BASE = common dso_local global i64 0, align 8
@NR_LRU_LISTS = common dso_local global i32 0, align 4
@NR_SLAB_RECLAIMABLE = common dso_local global i64 0, align 8
@NR_SLAB_UNRECLAIMABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shrinker*, %struct.shrink_control*)* @count_shadow_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_shadow_nodes(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.shrinker*, align 8
  %5 = alloca %struct.shrink_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.shrinker* %0, %struct.shrinker** %4, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %5, align 8
  %9 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %10 = call i64 @list_lru_shrink_count(i32* @shadow_nodes, %struct.shrink_control* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %12 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @node_present_pages(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @XA_CHUNK_SHIFT, align 4
  %17 = sub nsw i32 %16, 3
  %18 = zext i32 %17 to i64
  %19 = lshr i64 %15, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* @SHRINK_EMPTY, align 8
  store i64 %23, i64* %3, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %33

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %29, %28, %22
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @list_lru_shrink_count(i32*, %struct.shrink_control*) #1

declare dso_local i64 @node_present_pages(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
