; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@CONFIG_ARCH_HAS_UNCACHED_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_direct_free(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* @CONFIG_ARCH_HAS_UNCACHED_SEGMENT, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %5
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @dma_alloc_need_uncached(%struct.device* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @arch_dma_free(%struct.device* %20, i64 %21, i8* %22, i32 %23, i64 %24)
  br label %33

26:                                               ; preds = %14, %5
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @dma_direct_free_pages(%struct.device* %27, i64 %28, i8* %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @dma_alloc_need_uncached(%struct.device*, i64) #1

declare dso_local i32 @arch_dma_free(%struct.device*, i64, i8*, i32, i64) #1

declare dso_local i32 @dma_direct_free_pages(%struct.device*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
