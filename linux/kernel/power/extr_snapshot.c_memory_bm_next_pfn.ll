; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_memory_bm_next_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_memory_bm_next_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@BM_BITS_PER_BLOCK = common dso_local global i32 0, align 4
@BM_END_OF_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.memory_bitmap*)* @memory_bm_next_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_bm_next_pfn(%struct.memory_bitmap* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.memory_bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %3, align 8
  br label %8

8:                                                ; preds = %70, %1
  %9 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %10 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %16 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub i64 %14, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %25 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %23, %27
  %29 = load i32, i32* @BM_BITS_PER_BLOCK, align 4
  %30 = call i64 @min(i64 %28, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %32 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %39 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @find_next_bit(i32 %36, i64 %37, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %4, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %8
  %48 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %49 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %56 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %54, %58
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  store i64 %62, i64* %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %66 = getelementptr inbounds %struct.memory_bitmap, %struct.memory_bitmap* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %2, align 8
  br label %76

69:                                               ; preds = %8
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %72 = call i64 @rtree_next_node(%struct.memory_bitmap* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %8, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @BM_END_OF_MAP, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %47
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @find_next_bit(i32, i64, i32) #1

declare dso_local i64 @rtree_next_node(%struct.memory_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
