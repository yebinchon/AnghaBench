; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_tlb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_tlb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_7__*, %struct.TYPE_8__, i32*, %struct.TYPE_8__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@SNDRV_TRIDENT_MAX_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to allocate TLB buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_TRIDENT_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to allocate silent page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_tlb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_tlb_alloc(%struct.snd_trident* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  %5 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %6 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %7 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @snd_dma_pci_data(i32 %8)
  %10 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %11 = mul nsw i32 2, %10
  %12 = mul nsw i32 %11, 4
  %13 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %14 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = call i64 @snd_dma_alloc_pages(i32 %5, i32 %9, i32 %12, %struct.TYPE_8__* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %20 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %155

27:                                               ; preds = %1
  %28 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %29 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %34 = mul nsw i32 %33, 4
  %35 = call i64 @ALIGN(i64 %32, i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %38 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32* %36, i32** %39, align 8
  %40 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %41 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %46 = mul nsw i32 %45, 4
  %47 = call i64 @ALIGN(i64 %44, i32 %46)
  %48 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %49 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  store i64 %47, i64* %50, align 8
  %51 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %52 = call i32 @array_size(i32 %51, i32 8)
  %53 = call i64* @vmalloc(i32 %52)
  %54 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %55 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64* %53, i64** %56, align 8
  %57 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %58 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %27
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %155

65:                                               ; preds = %27
  %66 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %67 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %68 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @snd_dma_pci_data(i32 %69)
  %71 = load i32, i32* @SNDRV_TRIDENT_PAGE_SIZE, align 4
  %72 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %73 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = call i64 @snd_dma_alloc_pages(i32 %66, i32 %70, i32 %71, %struct.TYPE_8__* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %79 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %155

86:                                               ; preds = %65
  %87 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %88 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @SNDRV_TRIDENT_PAGE_SIZE, align 4
  %93 = call i32 @memset(i64 %91, i32 0, i32 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %130, %86
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  %99 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %100 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @SNDRV_TRIDENT_PAGE_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = xor i32 %105, -1
  %107 = sext i32 %106 to i64
  %108 = and i64 %103, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @cpu_to_le32(i32 %109)
  %111 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %112 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %110, i32* %117, align 4
  %118 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %119 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %124 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %122, i64* %129, align 8
  br label %130

130:                                              ; preds = %98
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %94

133:                                              ; preds = %94
  %134 = load i32, i32* @SNDRV_TRIDENT_PAGE_SIZE, align 4
  %135 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %136 = mul nsw i32 %134, %135
  %137 = call %struct.TYPE_7__* @snd_util_memhdr_new(i32 %136)
  %138 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %139 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %140, align 8
  %141 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %142 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = icmp eq %struct.TYPE_7__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %155

149:                                              ; preds = %133
  %150 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %151 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 4, i32* %154, align 4
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %146, %77, %62, %18
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_7__* @snd_util_memhdr_new(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
