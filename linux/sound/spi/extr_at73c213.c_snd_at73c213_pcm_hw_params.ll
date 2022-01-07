; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_at73c213 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TFMR = common dso_local global i32 0, align 4
@TFMR_DATNB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_at73c213_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_at73c213*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_at73c213* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_at73c213* %9, %struct.snd_at73c213** %5, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %11 = call i32 @params_channels(%struct.snd_pcm_hw_params* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %13 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TFMR, align 4
  %18 = call i32 @ssc_readl(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @TFMR_DATNB, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @SSC_BFINS(i32 %19, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %25 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TFMR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ssc_writel(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %34 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %33)
  %35 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %32, i32 %34)
  ret i32 %35
}

declare dso_local %struct.snd_at73c213* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ssc_readl(i32, i32) #1

declare dso_local i32 @SSC_BFINS(i32, i32, i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
