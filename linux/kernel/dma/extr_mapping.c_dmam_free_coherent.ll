; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dmam_free_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dmam_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_devres = type { i64, i8*, i32 }

@dmam_release = common dso_local global i32 0, align 4
@dmam_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmam_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_devres, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %9, i32 0, i32 1
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dma_free_coherent(%struct.device* %16, i64 %17, i8* %18, i32 %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* @dmam_release, align 4
  %23 = load i32, i32* @dmam_match, align 4
  %24 = call i32 @devres_destroy(%struct.device* %21, i32 %22, i32 %23, %struct.dma_devres* %9)
  %25 = call i32 @WARN_ON(i32 %24)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_destroy(%struct.device*, i32, i32, %struct.dma_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
