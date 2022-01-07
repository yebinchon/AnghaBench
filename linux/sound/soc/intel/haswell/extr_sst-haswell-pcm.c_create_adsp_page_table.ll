; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_create_adsp_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_create_adsp_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.hsw_priv_data = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_dma_buffer = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"generating page table for %p size 0x%zx pages %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"pfn i %i idx %d pfn %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.hsw_priv_data*, %struct.snd_soc_pcm_runtime*, i8*, i64, i32)* @create_adsp_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_adsp_page_table(%struct.snd_pcm_substream* %0, %struct.hsw_priv_data* %1, %struct.snd_soc_pcm_runtime* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hsw_priv_data*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_dma_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store %struct.hsw_priv_data* %1, %struct.hsw_priv_data** %8, align 8
  store %struct.snd_soc_pcm_runtime* %2, %struct.snd_soc_pcm_runtime** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %21 = call %struct.snd_dma_buffer* @snd_pcm_get_dma_buf(%struct.snd_pcm_substream* %20)
  store %struct.snd_dma_buffer* %21, %struct.snd_dma_buffer** %13, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @snd_sgbuf_aligned_pages(i64 %25)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %30, i64 %31, i32 %32)
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %89, %6
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = shl i32 %39, 2
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %40, %41
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %17, align 4
  %44 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @snd_sgbuf_get_addr(%struct.snd_dma_buffer* %44, i32 %47)
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %18, align 4
  %51 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %52 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %59 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %19, align 8
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %38
  %78 = load i32, i32* %18, align 4
  %79 = shl i32 %78, 4
  %80 = load i32*, i32** %19, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %88

83:                                               ; preds = %38
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %19, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %34

92:                                               ; preds = %34
  ret i32 0
}

declare dso_local %struct.snd_dma_buffer* @snd_pcm_get_dma_buf(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_sgbuf_aligned_pages(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_sgbuf_get_addr(%struct.snd_dma_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
