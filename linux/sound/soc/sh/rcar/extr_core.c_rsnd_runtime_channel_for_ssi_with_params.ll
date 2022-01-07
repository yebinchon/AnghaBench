; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_runtime_channel_for_ssi_with_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_runtime_channel_for_ssi_with_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.rsnd_dai = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_runtime_channel_for_ssi_with_params(%struct.rsnd_dai_stream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.rsnd_dai*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %7 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %8 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %7)
  store %struct.rsnd_dai* %8, %struct.rsnd_dai** %5, align 8
  %9 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %10 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %15 = call i32 @rsnd_runtime_channel_after_ctu_with_params(%struct.rsnd_dai_stream* %13, %struct.snd_pcm_hw_params* %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = call i32 @rsnd_runtime_channel_original_with_params(%struct.rsnd_dai_stream* %17, %struct.snd_pcm_hw_params* %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %23 = call i64 @rsnd_runtime_is_multi_ssi(%struct.rsnd_dai_stream* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %27 = call i32 @rsnd_rdai_ssi_lane_get(%struct.rsnd_dai* %26)
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rsnd_channel_normalization(i32 %31)
  ret i32 %32
}

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(%struct.rsnd_dai_stream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rsnd_runtime_channel_original_with_params(%struct.rsnd_dai_stream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i64 @rsnd_runtime_is_multi_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_rdai_ssi_lane_get(%struct.rsnd_dai*) #1

declare dso_local i32 @rsnd_channel_normalization(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
