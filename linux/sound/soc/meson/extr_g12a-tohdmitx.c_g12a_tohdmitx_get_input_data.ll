; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_get_input_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_get_input_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g12a_tohdmitx_input = type { i32 }
%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.g12a_tohdmitx_input* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g12a_tohdmitx_input* (%struct.snd_soc_dapm_widget*)* @g12a_tohdmitx_get_input_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g12a_tohdmitx_input* @g12a_tohdmitx_get_input_data(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca %struct.g12a_tohdmitx_input*, align 8
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  %6 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %7 = call %struct.snd_soc_dapm_widget* @g12a_tohdmitx_get_input(%struct.snd_soc_dapm_widget* %6)
  store %struct.snd_soc_dapm_widget* %7, %struct.snd_soc_dapm_widget** %4, align 8
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = icmp ne %struct.snd_soc_dapm_widget* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.g12a_tohdmitx_input* null, %struct.g12a_tohdmitx_input** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %5, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %20, align 8
  store %struct.g12a_tohdmitx_input* %21, %struct.g12a_tohdmitx_input** %2, align 8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %2, align 8
  ret %struct.g12a_tohdmitx_input* %23
}

declare dso_local %struct.snd_soc_dapm_widget* @g12a_tohdmitx_get_input(%struct.snd_soc_dapm_widget*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
