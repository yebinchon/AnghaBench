; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_psc_ac97.c_psc_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_psc_ac97.c_psc_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.psc_dma = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.psc_dma_stream = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"AC97 START: stream=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"AC97 STOP: stream=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @psc_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.psc_dma*, align 8
  %8 = alloca %struct.psc_dma_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %10 = call %struct.psc_dma* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.psc_dma* %10, %struct.psc_dma** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %13 = call %struct.psc_dma_stream* @to_psc_dma_stream(%struct.snd_pcm_substream* %11, %struct.psc_dma* %12)
  store %struct.psc_dma_stream* %13, %struct.psc_dma_stream** %8, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %66 [
    i32 129, label %15
    i32 128, label %40
  ]

15:                                               ; preds = %3
  %16 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %17 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %8, align 8
  %26 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %29 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %33 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %37 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @out_be32(i32* %35, i32 %38)
  br label %66

40:                                               ; preds = %3
  %41 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %42 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %8, align 8
  %51 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %55 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %59 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.psc_dma*, %struct.psc_dma** %7, align 8
  %63 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @out_be32(i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %3, %40, %15
  ret i32 0
}

declare dso_local %struct.psc_dma* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.psc_dma_stream* @to_psc_dma_stream(%struct.snd_pcm_substream*, %struct.psc_dma*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
