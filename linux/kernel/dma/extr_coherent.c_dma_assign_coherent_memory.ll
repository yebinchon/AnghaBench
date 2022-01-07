; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_assign_coherent_memory.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_assign_coherent_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dma_coherent_mem* }
%struct.dma_coherent_mem = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.dma_coherent_mem*)* @dma_assign_coherent_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_assign_coherent_memory(%struct.device* %0, %struct.dma_coherent_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dma_coherent_mem*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.dma_coherent_mem* %1, %struct.dma_coherent_mem** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %13, align 8
  %15 = icmp ne %struct.dma_coherent_mem* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  store %struct.dma_coherent_mem* %20, %struct.dma_coherent_mem** %22, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16, %8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
