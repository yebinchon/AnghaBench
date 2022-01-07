; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_playback_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_playback_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@SRC3_DIRECTION_OFFSET = common dso_local global i32 0, align 4
@MINISRC_COEF_LOC = common dso_local global i32 0, align 4
@CDATA_DMA_CONTROL = common dso_local global i32 0, align 4
@DMACONTROL_AUTOREPEAT = common dso_local global i32 0, align 4
@DMAC_PAGE3_SELECTOR = common dso_local global i32 0, align 4
@DMAC_BLOCKF_SELECTOR = common dso_local global i32 0, align 4
@pv = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*)* @snd_m3_playback_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_playback_setup(%struct.snd_m3* %0, %struct.m3_dma* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.m3_dma*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %8 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %9 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %10 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %11 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SRC3_DIRECTION_OFFSET, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 12
  %17 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %18 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 40
  %22 = add nsw i32 %21, 8
  %23 = call i32 @snd_m3_assp_write(%struct.snd_m3* %8, i32 %9, i32 %16, i32 %22)
  %24 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %25 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %26 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %27 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SRC3_DIRECTION_OFFSET, align 4
  %31 = add nsw i32 %29, %30
  %32 = add nsw i32 %31, 19
  %33 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %34 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MINISRC_COEF_LOC, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @snd_m3_assp_write(%struct.snd_m3* %24, i32 %25, i32 %32, i32 %38)
  %40 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %41 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %42 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %43 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SRC3_DIRECTION_OFFSET, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 22
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 45000
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 255, i32 0
  %57 = call i32 @snd_m3_assp_write(%struct.snd_m3* %40, i32 %41, i32 %48, i32 %56)
  %58 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %59 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %60 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %61 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CDATA_DMA_CONTROL, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @DMACONTROL_AUTOREPEAT, align 4
  %67 = load i32, i32* @DMAC_PAGE3_SELECTOR, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @DMAC_BLOCKF_SELECTOR, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @snd_m3_assp_write(%struct.snd_m3* %58, i32 %59, i32 %65, i32 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %98, %3
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pv, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %74)
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %79 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %80 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %81 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pv, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %83, %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pv, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @snd_m3_assp_write(%struct.snd_m3* %78, i32 %79, i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %77
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %72

101:                                              ; preds = %72
  ret void
}

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
