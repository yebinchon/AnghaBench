; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_get_required_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_get_required_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_map_ops = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_get_required_mask(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %5)
  store %struct.dma_map_ops* %6, %struct.dma_map_ops** %4, align 8
  %7 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %8 = call i64 @dma_is_direct(%struct.dma_map_ops* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dma_direct_get_required_mask(%struct.device* %11)
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %15 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %15, align 8
  %17 = icmp ne i32 (%struct.device.0*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %20 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %20, align 8
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = bitcast %struct.device* %22 to %struct.device.0*
  %24 = call i32 %21(%struct.device.0* %23)
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %13
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %18, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i64 @dma_is_direct(%struct.dma_map_ops*) #1

declare dso_local i32 @dma_direct_get_required_mask(%struct.device*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
