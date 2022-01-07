; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rsnd_dai = type { i32 }
%struct.rsnd_dai_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @rsnd_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.rsnd_dai*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_soc_dai* @rsnd_substream_to_dai(%struct.snd_pcm_substream* %7)
  store %struct.snd_soc_dai* %8, %struct.snd_soc_dai** %3, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %10 = call %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai* %9)
  store %struct.rsnd_dai* %10, %struct.rsnd_dai** %4, align 8
  %11 = load %struct.rsnd_dai*, %struct.rsnd_dai** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = call %struct.rsnd_dai_stream* @rsnd_rdai_to_io(%struct.rsnd_dai* %11, %struct.snd_pcm_substream* %12)
  store %struct.rsnd_dai_stream* %13, %struct.rsnd_dai_stream** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %16 = call i32 @rsnd_dai_call(i32 %14, %struct.rsnd_dai_stream* %15, i32* %6)
  %17 = load i32, i32* %6, align 4
  ret i32 %17
}

declare dso_local %struct.snd_soc_dai* @rsnd_substream_to_dai(%struct.snd_pcm_substream*) #1

declare dso_local %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai*) #1

declare dso_local %struct.rsnd_dai_stream* @rsnd_rdai_to_io(%struct.rsnd_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @rsnd_dai_call(i32, %struct.rsnd_dai_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
