; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_runtime_channel_after_ctu_with_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_runtime_channel_after_ctu_with_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"CTU and TDM Split should be used\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(%struct.rsnd_dai_stream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @rsnd_runtime_channel_original_with_params(%struct.rsnd_dai_stream* %10, %struct.snd_pcm_hw_params* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %14 = call %struct.rsnd_mod* @rsnd_io_to_mod_ctu(%struct.rsnd_dai_stream* %13)
  store %struct.rsnd_mod* %14, %struct.rsnd_mod** %7, align 8
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %16 = icmp ne %struct.rsnd_mod* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %19 = call i32 @rsnd_io_converted_chan(%struct.rsnd_dai_stream* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %21 = call i64 @rsnd_runtime_is_tdm_split(%struct.rsnd_dai_stream* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %25 = call i32 @rsnd_io_to_priv(%struct.rsnd_dai_stream* %24)
  %26 = call %struct.device* @rsnd_priv_to_dev(i32 %25)
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %17
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rsnd_runtime_channel_original_with_params(%struct.rsnd_dai_stream*, %struct.snd_pcm_hw_params*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ctu(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_converted_chan(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_runtime_is_tdm_split(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(i32) #1

declare dso_local i32 @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
