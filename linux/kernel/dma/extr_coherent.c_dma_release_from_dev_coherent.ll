; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_release_from_dev_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_release_from_dev_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_coherent_mem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_release_from_dev_coherent(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_coherent_mem*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.dma_coherent_mem* @dev_get_coherent_memory(%struct.device* %8)
  store %struct.dma_coherent_mem* %9, %struct.dma_coherent_mem** %7, align 8
  %10 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @__dma_release_from_coherent(%struct.dma_coherent_mem* %10, i32 %11, i8* %12)
  ret i32 %13
}

declare dso_local %struct.dma_coherent_mem* @dev_get_coherent_memory(%struct.device*) #1

declare dso_local i32 @__dma_release_from_coherent(%struct.dma_coherent_mem*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
