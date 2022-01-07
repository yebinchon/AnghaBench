; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_supported.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_map_ops = type { i32 (%struct.device.0*, i32)* }
%struct.device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_supported(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %7)
  store %struct.dma_map_ops* %8, %struct.dma_map_ops** %6, align 8
  %9 = load %struct.dma_map_ops*, %struct.dma_map_ops** %6, align 8
  %10 = call i64 @dma_is_direct(%struct.dma_map_ops* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dma_direct_supported(%struct.device* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.dma_map_ops*, %struct.dma_map_ops** %6, align 8
  %18 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.device.0*, i32)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load %struct.dma_map_ops*, %struct.dma_map_ops** %6, align 8
  %24 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %24, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = bitcast %struct.device* %26 to %struct.device.0*
  %28 = load i32, i32* %5, align 4
  %29 = call i32 %25(%struct.device.0* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %21, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i64 @dma_is_direct(%struct.dma_map_ops*) #1

declare dso_local i32 @dma_direct_supported(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
