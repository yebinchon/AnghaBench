; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_dw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_dw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chip = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_dma_chip* (%struct.device*, %struct.resource*, i32)* @dw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_dma_chip* @dw_probe(%struct.device* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca %struct.dw_dma_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_dma_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dw_dma_chip* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.dw_dma_chip* %12, %struct.dw_dma_chip** %8, align 8
  %13 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %14 = icmp ne %struct.dw_dma_chip* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dw_dma_chip* @ERR_PTR(i32 %17)
  store %struct.dw_dma_chip* %18, %struct.dw_dma_chip** %4, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %22 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %27 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %29 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %35 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.dw_dma_chip* @ERR_CAST(i32 %36)
  store %struct.dw_dma_chip* %37, %struct.dw_dma_chip** %4, align 8
  br label %60

38:                                               ; preds = %19
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @DMA_BIT_MASK(i32 31)
  %41 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.dw_dma_chip* @ERR_PTR(i32 %45)
  store %struct.dw_dma_chip* %46, %struct.dw_dma_chip** %4, align 8
  br label %60

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %50 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %49, i32 0, i32 1
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  %52 = call i32 @dw_dma_probe(%struct.dw_dma_chip* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.dw_dma_chip* @ERR_PTR(i32 %56)
  store %struct.dw_dma_chip* %57, %struct.dw_dma_chip** %4, align 8
  br label %60

58:                                               ; preds = %47
  %59 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  store %struct.dw_dma_chip* %59, %struct.dw_dma_chip** %4, align 8
  br label %60

60:                                               ; preds = %58, %55, %44, %33, %15
  %61 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %4, align 8
  ret %struct.dw_dma_chip* %61
}

declare dso_local %struct.dw_dma_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dw_dma_chip* @ERR_PTR(i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.dw_dma_chip* @ERR_CAST(i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dw_dma_probe(%struct.dw_dma_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
