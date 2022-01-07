; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tfa9879.c_tfa9879_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tfa9879.c_tfa9879_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tfa9879_priv = type { i64 }

@TFA9879_I2S_FS_8000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_11025 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_12000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_16000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_22050 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_24000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_32000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_44100 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_48000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_64000 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_88200 = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_96000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_LSB_J_16 = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_LSB_J_24 = common dso_local global i32 0, align 4
@TFA9879_SERIAL_INTERFACE_1 = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_MASK = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_SHIFT = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_MASK = common dso_local global i32 0, align 4
@TFA9879_I2S_FS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tfa9879_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfa9879_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.tfa9879_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.tfa9879_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.tfa9879_priv* %16, %struct.tfa9879_priv** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %43 [
    i32 8000, label %19
    i32 11025, label %21
    i32 12000, label %23
    i32 16000, label %25
    i32 22050, label %27
    i32 24000, label %29
    i32 32000, label %31
    i32 44100, label %33
    i32 48000, label %35
    i32 64000, label %37
    i32 88200, label %39
    i32 96000, label %41
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @TFA9879_I2S_FS_8000, align 4
  store i32 %20, i32* %10, align 4
  br label %46

21:                                               ; preds = %3
  %22 = load i32, i32* @TFA9879_I2S_FS_11025, align 4
  store i32 %22, i32* %10, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @TFA9879_I2S_FS_12000, align 4
  store i32 %24, i32* %10, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load i32, i32* @TFA9879_I2S_FS_16000, align 4
  store i32 %26, i32* %10, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load i32, i32* @TFA9879_I2S_FS_22050, align 4
  store i32 %28, i32* %10, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load i32, i32* @TFA9879_I2S_FS_24000, align 4
  store i32 %30, i32* %10, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load i32, i32* @TFA9879_I2S_FS_32000, align 4
  store i32 %32, i32* %10, align 4
  br label %46

33:                                               ; preds = %3
  %34 = load i32, i32* @TFA9879_I2S_FS_44100, align 4
  store i32 %34, i32* %10, align 4
  br label %46

35:                                               ; preds = %3
  %36 = load i32, i32* @TFA9879_I2S_FS_48000, align 4
  store i32 %36, i32* %10, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load i32, i32* @TFA9879_I2S_FS_64000, align 4
  store i32 %38, i32* %10, align 4
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* @TFA9879_I2S_FS_88200, align 4
  store i32 %40, i32* %10, align 4
  br label %46

41:                                               ; preds = %3
  %42 = load i32, i32* @TFA9879_I2S_FS_96000, align 4
  store i32 %42, i32* %10, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %77

46:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %48 = call i32 @params_width(%struct.snd_pcm_hw_params* %47)
  switch i32 %48, label %53 [
    i32 16, label %49
    i32 24, label %51
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @TFA9879_I2S_SET_LSB_J_16, align 4
  store i32 %50, i32* %11, align 4
  br label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @TFA9879_I2S_SET_LSB_J_24, align 4
  store i32 %52, i32* %11, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %77

56:                                               ; preds = %51, %49
  %57 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %9, align 8
  %58 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %63 = load i32, i32* @TFA9879_SERIAL_INTERFACE_1, align 4
  %64 = load i32, i32* @TFA9879_I2S_SET_MASK, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @TFA9879_I2S_SET_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = load i32, i32* @TFA9879_SERIAL_INTERFACE_1, align 4
  %72 = load i32, i32* @TFA9879_I2S_FS_MASK, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @TFA9879_I2S_FS_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %53, %43
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.tfa9879_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
