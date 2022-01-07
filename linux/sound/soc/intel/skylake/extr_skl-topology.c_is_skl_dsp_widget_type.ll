; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_is_skl_dsp_widget_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_is_skl_dsp_widget_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.device*)* @is_skl_dsp_widget_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_skl_dsp_widget_type(%struct.snd_soc_dapm_widget* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = icmp ne %struct.device* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %19 [
    i32 132, label %18
    i32 133, label %18
    i32 135, label %18
    i32 134, label %18
    i32 131, label %18
    i32 128, label %18
    i32 129, label %18
    i32 130, label %18
  ]

18:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  store i32 0, i32* %3, align 4
  br label %20

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
