; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c___dma_direct_optimal_gfp_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c___dma_direct_optimal_gfp_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@ARCH_ZONE_DMA_BITS = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i64*)* @__dma_direct_optimal_gfp_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_direct_optimal_gfp_mask(%struct.device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %18, %12, %3
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i64 @force_dma_unencrypted(%struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @__dma_to_phys(%struct.device* %27, i64 %28)
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  br label %36

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @dma_to_phys(%struct.device* %32, i64 %33)
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ARCH_ZONE_DMA_BITS, align 4
  %40 = call i64 @DMA_BIT_MASK(i32 %39)
  %41 = icmp sle i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @GFP_DMA, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %36
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @DMA_BIT_MASK(i32 32)
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @GFP_DMA32, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @force_dma_unencrypted(%struct.device*) #1

declare dso_local i64 @__dma_to_phys(%struct.device*, i64) #1

declare dso_local i64 @dma_to_phys(%struct.device*, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
