; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.rsnd_dai = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"invalid combination of slot-width and format-data-width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @rsnd_ssi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_hw_params(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.snd_pcm_substream* %2, %struct.snd_pcm_hw_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_dai_stream*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_hw_params*, align 8
  %10 = alloca %struct.rsnd_dai*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rsnd_priv*, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %6, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %7, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %8, align 8
  store %struct.snd_pcm_hw_params* %3, %struct.snd_pcm_hw_params** %9, align 8
  %14 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %15 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %14)
  store %struct.rsnd_dai* %15, %struct.rsnd_dai** %10, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %17 = call i32 @params_format(%struct.snd_pcm_hw_params* %16)
  %18 = call i32 @snd_pcm_format_width(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.rsnd_dai*, %struct.rsnd_dai** %10, align 8
  %21 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %26 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %25)
  store %struct.rsnd_priv* %26, %struct.rsnd_priv** %12, align 8
  %27 = load %struct.rsnd_priv*, %struct.rsnd_priv** %12, align 8
  %28 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %27)
  store %struct.device* %28, %struct.device** %13, align 8
  %29 = load %struct.device*, %struct.device** %13, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
