; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_aif1_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_aif1_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.tm2_machine_priv = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Not supported sample rate: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @tm2_aif1_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_aif1_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.tm2_machine_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %6, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(i32 %19)
  store %struct.tm2_machine_priv* %20, %struct.tm2_machine_priv** %8, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  switch i32 %22, label %29 [
    i32 4000, label %23
    i32 8000, label %23
    i32 12000, label %23
    i32 16000, label %23
    i32 24000, label %23
    i32 32000, label %23
    i32 48000, label %23
    i32 96000, label %23
    i32 192000, label %23
    i32 11025, label %26
    i32 22050, label %26
    i32 44100, label %26
    i32 88200, label %26
    i32 176400, label %26
  ]

23:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %24 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %8, align 8
  %25 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %24, i32 0, i32 0
  store i32 147456000, i32* %25, align 4
  br label %38

26:                                               ; preds = %2, %2, %2, %2, %2
  %27 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %8, align 8
  %28 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %27, i32 0, i32 0
  store i32 135475200, i32* %28, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  %35 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %26, %23
  %39 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %40 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @tm2_start_sysclk(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tm2_start_sysclk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
