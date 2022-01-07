; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c___dma_mmap_from_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c___dma_mmap_from_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_coherent_mem = type { i8*, i32, i32 }
%struct.vm_area_struct = type { i64, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_coherent_mem*, %struct.vm_area_struct*, i8*, i64, i32*)* @__dma_mmap_from_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_mmap_from_coherent(%struct.dma_coherent_mem* %0, %struct.vm_area_struct* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_coherent_mem*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.dma_coherent_mem* %0, %struct.dma_coherent_mem** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %18 = icmp ne %struct.dma_coherent_mem* %17, null
  br i1 %18, label %19, label %99

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %22 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp uge i8* %20, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %19
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %30 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %33 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %31, i64 %37
  %39 = icmp ule i8* %28, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %25
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %46 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %44 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = zext i32 %51 to i64
  %53 = ashr i64 %50, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %56 = call i32 @vma_pages(%struct.vm_area_struct* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @PAGE_ALIGN(i64 %57)
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %40
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %72, %73
  %75 = icmp ule i64 %70, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %7, align 8
  %78 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %16, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %16, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @PAGE_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @remap_pfn_range(%struct.vm_area_struct* %85, i32 %88, i64 %89, i32 %92, i32 %95)
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %76, %68, %40
  store i32 1, i32* %6, align 4
  br label %100

99:                                               ; preds = %25, %19, %5
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
