; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_init_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_init_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.esm_memory = type { i32, i32, %struct.TYPE_7__ }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't allocate dma pages for size %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DMA buffer beyond 256MB.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ESM_MEM_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1968*)* @snd_es1968_init_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_init_dmabuf(%struct.es1968* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esm_memory*, align 8
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  %6 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %7 = load %struct.es1968*, %struct.es1968** %3, align 8
  %8 = getelementptr inbounds %struct.es1968, %struct.es1968* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %6, i32* %10, align 4
  %11 = load %struct.es1968*, %struct.es1968** %3, align 8
  %12 = getelementptr inbounds %struct.es1968, %struct.es1968* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_dma_pci_data(i32 %13)
  %15 = load %struct.es1968*, %struct.es1968** %3, align 8
  %16 = getelementptr inbounds %struct.es1968, %struct.es1968* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %20 = load %struct.es1968*, %struct.es1968** %3, align 8
  %21 = getelementptr inbounds %struct.es1968, %struct.es1968* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_dma_pci_data(i32 %22)
  %24 = load %struct.es1968*, %struct.es1968** %3, align 8
  %25 = getelementptr inbounds %struct.es1968, %struct.es1968* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.es1968*, %struct.es1968** %3, align 8
  %28 = getelementptr inbounds %struct.es1968, %struct.es1968* %27, i32 0, i32 1
  %29 = call i32 @snd_dma_alloc_pages_fallback(i32 %19, i32 %23, i32 %26, %struct.TYPE_7__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.es1968*, %struct.es1968** %3, align 8
  %34 = getelementptr inbounds %struct.es1968, %struct.es1968* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.es1968*, %struct.es1968** %3, align 8
  %40 = getelementptr inbounds %struct.es1968, %struct.es1968* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.es1968*, %struct.es1968** %3, align 8
  %45 = getelementptr inbounds %struct.es1968, %struct.es1968* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %132

50:                                               ; preds = %32
  %51 = load %struct.es1968*, %struct.es1968** %3, align 8
  %52 = getelementptr inbounds %struct.es1968, %struct.es1968* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.es1968*, %struct.es1968** %3, align 8
  %56 = getelementptr inbounds %struct.es1968, %struct.es1968* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %60, -268435456
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %50
  %64 = load %struct.es1968*, %struct.es1968** %3, align 8
  %65 = getelementptr inbounds %struct.es1968, %struct.es1968* %64, i32 0, i32 1
  %66 = call i32 @snd_dma_free_pages(%struct.TYPE_7__* %65)
  %67 = load %struct.es1968*, %struct.es1968** %3, align 8
  %68 = getelementptr inbounds %struct.es1968, %struct.es1968* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %132

75:                                               ; preds = %50
  %76 = load %struct.es1968*, %struct.es1968** %3, align 8
  %77 = getelementptr inbounds %struct.es1968, %struct.es1968* %76, i32 0, i32 0
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.esm_memory* @kmalloc(i32 28, i32 %79)
  store %struct.esm_memory* %80, %struct.esm_memory** %5, align 8
  %81 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %82 = icmp eq %struct.esm_memory* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.es1968*, %struct.es1968** %3, align 8
  %85 = call i32 @snd_es1968_free_dmabuf(%struct.es1968* %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %132

88:                                               ; preds = %75
  %89 = load %struct.es1968*, %struct.es1968** %3, align 8
  %90 = getelementptr inbounds %struct.es1968, %struct.es1968* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @ESM_MEM_ALIGN, align 8
  %94 = call i32 @memset(i32 %92, i32 0, i64 %93)
  %95 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %96 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %95, i32 0, i32 2
  %97 = load %struct.es1968*, %struct.es1968** %3, align 8
  %98 = getelementptr inbounds %struct.es1968, %struct.es1968* %97, i32 0, i32 1
  %99 = bitcast %struct.TYPE_7__* %96 to i8*
  %100 = bitcast %struct.TYPE_7__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 20, i1 false)
  %101 = load i64, i64* @ESM_MEM_ALIGN, align 8
  %102 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %103 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %101
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load i64, i64* @ESM_MEM_ALIGN, align 8
  %110 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %111 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %109
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load i64, i64* @ESM_MEM_ALIGN, align 8
  %118 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %119 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = sub nsw i64 %122, %117
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %126 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.esm_memory*, %struct.esm_memory** %5, align 8
  %128 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %127, i32 0, i32 1
  %129 = load %struct.es1968*, %struct.es1968** %3, align 8
  %130 = getelementptr inbounds %struct.es1968, %struct.es1968* %129, i32 0, i32 0
  %131 = call i32 @list_add(i32* %128, i32* %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %88, %83, %63, %38
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_dma_alloc_pages_fallback(i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.esm_memory* @kmalloc(i32, i32) #1

declare dso_local i32 @snd_es1968_free_dmabuf(%struct.es1968*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
