; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_dmapool.c_pool_initialise_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_dmapool.c_pool_initialise_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32, i32 }
%struct.dma_page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_pool*, %struct.dma_page*)* @pool_initialise_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_initialise_page(%struct.dma_pool* %0, %struct.dma_page* %1) #0 {
  %3 = alloca %struct.dma_pool*, align 8
  %4 = alloca %struct.dma_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_pool* %0, %struct.dma_pool** %3, align 8
  store %struct.dma_page* %1, %struct.dma_page** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %9 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %14 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %19 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp uge i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %30 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %11
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %37 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = inttoptr i64 %41 to i32*
  store i32 %35, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %47 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %11, label %50

50:                                               ; preds = %44
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
