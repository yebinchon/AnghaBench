; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_declare_coherent_memory.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_declare_coherent_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_coherent_mem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_declare_coherent_memory(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dma_coherent_mem*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @dma_init_coherent_memory(i32 %12, i32 %13, i64 %14, %struct.dma_coherent_mem** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %23 = call i32 @dma_assign_coherent_memory(%struct.device* %21, %struct.dma_coherent_mem* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %28 = call i32 @dma_release_coherent_memory(%struct.dma_coherent_mem* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @dma_init_coherent_memory(i32, i32, i64, %struct.dma_coherent_mem**) #1

declare dso_local i32 @dma_assign_coherent_memory(%struct.device*, %struct.dma_coherent_mem*) #1

declare dso_local i32 @dma_release_coherent_memory(%struct.dma_coherent_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
