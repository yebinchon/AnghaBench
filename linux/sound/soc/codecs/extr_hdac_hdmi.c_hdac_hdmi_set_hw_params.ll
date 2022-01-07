; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_set_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_set_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hdac_hdmi_priv = type { %struct.hdac_hdmi_dai_port_map* }
%struct.hdac_hdmi_dai_port_map = type { i32 }
%struct.hdac_hdmi_pcm = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @hdac_hdmi_set_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_set_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.hdac_hdmi_priv*, align 8
  %9 = alloca %struct.hdac_hdmi_dai_port_map*, align 8
  %10 = alloca %struct.hdac_hdmi_pcm*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.hdac_hdmi_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.hdac_hdmi_priv* %13, %struct.hdac_hdmi_priv** %8, align 8
  %14 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %8, align 8
  %15 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %14, i32 0, i32 0
  %16 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %15, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %16, i64 %19
  store %struct.hdac_hdmi_dai_port_map* %20, %struct.hdac_hdmi_dai_port_map** %9, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_channels(%struct.snd_pcm_hw_params* %23)
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_format(%struct.snd_pcm_hw_params* %25)
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_hdac_calc_stream_format(i32 %22, i32 %24, i32 %26, i32 %32, i32 0)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %8, align 8
  %35 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %9, align 8
  %36 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.hdac_hdmi_pcm* @hdac_hdmi_get_pcm_from_cvt(%struct.hdac_hdmi_priv* %34, i32 %37)
  store %struct.hdac_hdmi_pcm* %38, %struct.hdac_hdmi_pcm** %10, align 8
  %39 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %10, align 8
  %40 = icmp ne %struct.hdac_hdmi_pcm* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %10, align 8
  %47 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %49 = call i32 @params_channels(%struct.snd_pcm_hw_params* %48)
  %50 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %10, align 8
  %51 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.hdac_hdmi_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_hdac_calc_stream_format(i32, i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.hdac_hdmi_pcm* @hdac_hdmi_get_pcm_from_cvt(%struct.hdac_hdmi_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
