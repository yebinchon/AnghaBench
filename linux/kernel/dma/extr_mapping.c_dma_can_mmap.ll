; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_can_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_can_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_map_ops = type { i32* }

@CONFIG_MMU = common dso_local global i32 0, align 4
@CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_can_mmap(%struct.device* %0) #0 {
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
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @CONFIG_MMU, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i64 @dev_is_dma_coherent(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN, align 4
  %20 = call i64 @IS_ENABLED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i1 [ false, %10 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %29 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i64 @dma_is_direct(%struct.dma_map_ops*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @dev_is_dma_coherent(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
