; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpios.c_hpios_locked_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpios.c_hpios_locked_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consistent_dma_area = type { i64, i32*, i64, i64 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"allocated %d bytes, dma 0x%x vma %p\0A\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to allocate %d bytes locked memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpios_locked_mem_alloc(%struct.consistent_dma_area* %0, i64 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.consistent_dma_area*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.consistent_dma_area* %0, %struct.consistent_dma_area** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %12 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %11, i32 0, i32 3
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @dma_alloc_coherent(i32* %9, i64 %10, i64* %12, i32 %13)
  %15 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %16 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %18 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load i32, i32* @DEBUG, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %25 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %29 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, i64, ...) @HPI_DEBUG_LOG(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %27, i64 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %35 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %38 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %45

39:                                               ; preds = %3
  %40 = load i32, i32* @WARNING, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 (i32, i8*, i64, ...) @HPI_DEBUG_LOG(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.consistent_dma_area*, %struct.consistent_dma_area** %5, align 8
  %44 = getelementptr inbounds %struct.consistent_dma_area, %struct.consistent_dma_area* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @dma_alloc_coherent(i32*, i64, i64*, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
