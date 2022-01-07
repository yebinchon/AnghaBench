; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c___dma_alloc_from_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c___dma_alloc_from_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_coherent_mem = type { i32, i32, i8*, i64, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_coherent_mem*, i32, i64*)* @__dma_alloc_from_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__dma_alloc_from_coherent(%struct.dma_coherent_mem* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dma_coherent_mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dma_coherent_mem* %0, %struct.dma_coherent_mem** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @get_order(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %15 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %14, i32 0, i32 1
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %20 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = icmp sgt i32 %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %70

29:                                               ; preds = %3
  %30 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %31 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %34 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @bitmap_find_free_region(i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %70

44:                                               ; preds = %29
  %45 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %46 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %55 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %56, i64 %60
  store i8* %61, i8** %11, align 8
  %62 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %63 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %62, i32 0, i32 1
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @memset(i8* %66, i32 0, i32 %67)
  %69 = load i8*, i8** %11, align 8
  store i8* %69, i8** %4, align 8
  br label %75

70:                                               ; preds = %43, %28
  %71 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %72 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %71, i32 0, i32 1
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i8* null, i8** %4, align 8
  br label %75

75:                                               ; preds = %70, %44
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
