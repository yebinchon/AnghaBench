; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_input_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_input_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_6__*, %struct.g12a_tohdmitx_input* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.g12a_tohdmitx_input = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @g12a_tohdmitx_input_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_tohdmitx_input_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.g12a_tohdmitx_input*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 1
  %10 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %9, align 8
  store %struct.g12a_tohdmitx_input* %10, %struct.g12a_tohdmitx_input** %7, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i8* @params_rate(%struct.snd_pcm_hw_params* %11)
  %13 = call i32 @snd_pcm_rate_to_rate_bit(i8* %12)
  %14 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %15 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store i32 %13, i32* %16, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i8* @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %20 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i8* %18, i8** %21, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %23 = call i8* @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %25 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i8* %23, i8** %26, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_format(%struct.snd_pcm_hw_params* %27)
  %29 = shl i32 1, %28
  %30 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %31 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i8* @params_channels(%struct.snd_pcm_hw_params* %33)
  %35 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %36 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %39 = call i8* @params_channels(%struct.snd_pcm_hw_params* %38)
  %40 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %41 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %50 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i8*) #1

declare dso_local i8* @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
