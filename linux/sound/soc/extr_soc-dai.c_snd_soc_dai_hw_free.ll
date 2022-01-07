; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dai.c_snd_soc_dai_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dai.c_snd_soc_dai_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* }
%struct.snd_pcm_substream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_soc_dai_hw_free(%struct.snd_soc_dai* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %6 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %10, align 8
  %12 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %23 = call i32 %20(%struct.snd_pcm_substream* %21, %struct.snd_soc_dai* %22)
  br label %24

24:                                               ; preds = %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
