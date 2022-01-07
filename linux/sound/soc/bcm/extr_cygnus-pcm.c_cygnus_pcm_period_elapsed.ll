; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_pcm_period_elapsed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_pcm_period_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.cygnus_aio_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ringbuf_regs = type { i64, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @cygnus_pcm_period_elapsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cygnus_pcm_period_elapsed(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cygnus_aio_port*, align 8
  %4 = alloca %struct.ringbuf_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  store %struct.ringbuf_regs* null, %struct.ringbuf_regs** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream* %6)
  store %struct.cygnus_aio_port* %7, %struct.cygnus_aio_port** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.ringbuf_regs* @get_ringbuf(%struct.snd_pcm_substream* %8)
  store %struct.ringbuf_regs* %9, %struct.ringbuf_regs** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %10)
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %19 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %24 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT(i32 31)
  %30 = xor i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %33 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %38 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @writel(i32 %31, i64 %40)
  br label %64

42:                                               ; preds = %1
  %43 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %44 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %49 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %55 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %60 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel(i32 %53, i64 %62)
  br label %64

64:                                               ; preds = %42, %17
  ret void
}

declare dso_local %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ringbuf_regs* @get_ringbuf(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
