; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_capture_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_capture_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }

@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@SRC3_DIRECTION_OFFSET = common dso_local global i64 0, align 8
@CDATA_DMA_CONTROL = common dso_local global i64 0, align 8
@DMACONTROL_DIRECTION = common dso_local global i64 0, align 8
@DMACONTROL_AUTOREPEAT = common dso_local global i64 0, align 8
@DMAC_PAGE3_SELECTOR = common dso_local global i64 0, align 8
@DMAC_BLOCKF_SELECTOR = common dso_local global i64 0, align 8
@rv = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*)* @snd_m3_capture_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_capture_setup(%struct.snd_m3* %0, %struct.m3_dma* %1, %struct.snd_pcm_substream* %2) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SRC3_DIRECTION_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = add nsw i64 %15, 12
  %17 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %18 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 40
  %22 = add nsw i64 %21, 8
  %23 = call i32 @snd_m3_assp_write(%struct.snd_m3* %8, i32 %9, i64 %16, i64 %22)
  %24 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %25 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %26 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %27 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CDATA_DMA_CONTROL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @DMACONTROL_DIRECTION, align 8
  %33 = load i64, i64* @DMACONTROL_AUTOREPEAT, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @DMAC_PAGE3_SELECTOR, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @DMAC_BLOCKF_SELECTOR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @snd_m3_assp_write(%struct.snd_m3* %24, i32 %25, i64 %31, i64 %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %66, %3
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rv, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %47 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %48 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %49 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rv, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %51, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rv, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @snd_m3_assp_write(%struct.snd_m3* %46, i32 %47, i64 %58, i64 %64)
  br label %66

66:                                               ; preds = %45
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %40

69:                                               ; preds = %40
  ret void
}

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
