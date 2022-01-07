; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdmout.c_axg_tdmout_get_tdm_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdmout.c_axg_tdmout_get_tdm_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_tdm_stream = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_soc_dai = type { %struct.axg_tdm_stream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axg_tdm_stream* (%struct.snd_soc_dapm_widget*)* @axg_tdmout_get_tdm_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axg_tdm_stream* @axg_tdmout_get_tdm_stream(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca %struct.axg_tdm_stream*, align 8
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  %5 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %6 = call %struct.snd_soc_dai* @axg_tdmout_get_be(%struct.snd_soc_dapm_widget* %5)
  store %struct.snd_soc_dai* %6, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = icmp ne %struct.snd_soc_dai* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.axg_tdm_stream* null, %struct.axg_tdm_stream** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %12, align 8
  store %struct.axg_tdm_stream* %13, %struct.axg_tdm_stream** %2, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %2, align 8
  ret %struct.axg_tdm_stream* %15
}

declare dso_local %struct.snd_soc_dai* @axg_tdmout_get_be(%struct.snd_soc_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
