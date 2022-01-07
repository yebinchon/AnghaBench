; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_enable_intr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.cygnus_aio_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ESR0_STATUS_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR1_STATUS_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR3_STATUS_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR0_MASK_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR1_MASK_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR3_MASK_CLR_OFFSET = common dso_local global i64 0, align 8
@ANY_PLAYBACK_IRQ = common dso_local global i32 0, align 4
@INTH_R5F_MASK_CLEAR_OFFSET = common dso_local global i64 0, align 8
@ESR2_STATUS_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR4_STATUS_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR2_MASK_CLR_OFFSET = common dso_local global i64 0, align 8
@ESR4_MASK_CLR_OFFSET = common dso_local global i64 0, align 8
@ANY_CAPTURE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_intr(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cygnus_aio_port*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream* %5)
  store %struct.cygnus_aio_port* %6, %struct.cygnus_aio_port** %3, align 8
  %7 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %8 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @BIT(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %19 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ESR0_STATUS_CLR_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %17, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %28 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ESR1_STATUS_CLR_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %26, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %37 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ESR3_STATUS_CLR_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %35, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %46 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ESR0_MASK_CLR_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %44, i64 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %55 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ESR1_MASK_CLR_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %53, i64 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %64 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ESR3_MASK_CLR_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %62, i64 %69)
  %71 = load i32, i32* @ANY_PLAYBACK_IRQ, align 4
  %72 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %73 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @INTH_R5F_MASK_CLEAR_OFFSET, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %71, i64 %78)
  br label %126

80:                                               ; preds = %1
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %83 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ESR2_STATUS_CLR_OFFSET, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %81, i64 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %92 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ESR4_STATUS_CLR_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %90, i64 %97)
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %101 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ESR2_MASK_CLR_OFFSET, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %99, i64 %106)
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %110 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ESR4_MASK_CLR_OFFSET, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %108, i64 %115)
  %117 = load i32, i32* @ANY_CAPTURE_IRQ, align 4
  %118 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %119 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @INTH_R5F_MASK_CLEAR_OFFSET, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %117, i64 %124)
  br label %126

126:                                              ; preds = %80, %16
  ret void
}

declare dso_local %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
