; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_create_zone_bm_rtree.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_create_zone_bm_rtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_zone_bm_rtree = type { i64, i64, i32, i32 }
%struct.chain_allocator = type { i32 }

@BM_BITS_PER_BLOCK = common dso_local global i32 0, align 4
@PG_UNSAFE_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_zone_bm_rtree* (i32, i32, %struct.chain_allocator*, i64, i64)* @create_zone_bm_rtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_zone_bm_rtree* @create_zone_bm_rtree(i32 %0, i32 %1, %struct.chain_allocator* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mem_zone_bm_rtree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.chain_allocator*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mem_zone_bm_rtree*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.chain_allocator* %2, %struct.chain_allocator** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %10, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %15, align 8
  %19 = load %struct.chain_allocator*, %struct.chain_allocator** %9, align 8
  %20 = call %struct.mem_zone_bm_rtree* @chain_alloc(%struct.chain_allocator* %19, i32 24)
  store %struct.mem_zone_bm_rtree* %20, %struct.mem_zone_bm_rtree** %12, align 8
  %21 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %22 = icmp ne %struct.mem_zone_bm_rtree* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.mem_zone_bm_rtree* null, %struct.mem_zone_bm_rtree** %6, align 8
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %26 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %29 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %28, i32 0, i32 2
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %33 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %36 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i32, i32* @BM_BITS_PER_BLOCK, align 4
  %39 = call i32 @DIV_ROUND_UP(i64 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %56, %24
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.chain_allocator*, %struct.chain_allocator** %9, align 8
  %49 = call i64 @add_rtree_block(%struct.mem_zone_bm_rtree* %45, i32 %46, i32 %47, %struct.chain_allocator* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  %53 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %54 = call i32 @free_zone_bm_rtree(%struct.mem_zone_bm_rtree* %52, i32 %53)
  store %struct.mem_zone_bm_rtree* null, %struct.mem_zone_bm_rtree** %6, align 8
  br label %61

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %12, align 8
  store %struct.mem_zone_bm_rtree* %60, %struct.mem_zone_bm_rtree** %6, align 8
  br label %61

61:                                               ; preds = %59, %51, %23
  %62 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  ret %struct.mem_zone_bm_rtree* %62
}

declare dso_local %struct.mem_zone_bm_rtree* @chain_alloc(%struct.chain_allocator*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @add_rtree_block(%struct.mem_zone_bm_rtree*, i32, i32, %struct.chain_allocator*) #1

declare dso_local i32 @free_zone_bm_rtree(%struct.mem_zone_bm_rtree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
