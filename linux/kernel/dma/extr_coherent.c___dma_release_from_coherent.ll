; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c___dma_release_from_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c___dma_release_from_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_coherent_mem = type { i8*, i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_coherent_mem*, i32, i8*)* @__dma_release_from_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_release_from_coherent(%struct.dma_coherent_mem* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_coherent_mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dma_coherent_mem* %0, %struct.dma_coherent_mem** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %11 = icmp ne %struct.dma_coherent_mem* %10, null
  br i1 %11, label %12, label %57

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %15 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp uge i8* %13, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %21 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %24 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %22, i64 %28
  %30 = icmp ult i8* %19, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %18
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %34 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = zext i32 %39 to i64
  %41 = ashr i64 %38, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %44 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %43, i32 0, i32 2
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %48 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @bitmap_release_region(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %54 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %53, i32 0, i32 2
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 1, i32* %4, align 4
  br label %58

57:                                               ; preds = %18, %12, %3
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %31
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
