; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@CONFIG_ARCH_HAS_UNCACHED_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_direct_free_pages(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @get_order(i64 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i64 @force_dma_unencrypted(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @__dma_direct_free_pages(%struct.device* %23, i64 %24, i8* %25)
  br label %55

27:                                               ; preds = %18, %5
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i64 @force_dma_unencrypted(%struct.device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 1, %34
  %36 = call i32 @set_memory_encrypted(i64 %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i32, i32* @CONFIG_ARCH_HAS_UNCACHED_SEGMENT, align 4
  %39 = call i64 @IS_ENABLED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @dma_alloc_need_uncached(%struct.device* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = call i8* @cached_kernel_address(i8* %47)
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %46, %41, %37
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @virt_to_page(i8* %52)
  %54 = call i32 @__dma_direct_free_pages(%struct.device* %50, i64 %51, i8* %53)
  br label %55

55:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @force_dma_unencrypted(%struct.device*) #1

declare dso_local i32 @__dma_direct_free_pages(%struct.device*, i64, i8*) #1

declare dso_local i32 @set_memory_encrypted(i64, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @dma_alloc_need_uncached(%struct.device*, i64) #1

declare dso_local i8* @cached_kernel_address(i8*) #1

declare dso_local i8* @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
