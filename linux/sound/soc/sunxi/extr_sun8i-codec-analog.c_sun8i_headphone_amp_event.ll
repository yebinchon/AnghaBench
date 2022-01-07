; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_headphone_amp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_headphone_amp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@SUN8I_ADDA_PAEN_HP_CTRL = common dso_local global i32 0, align 4
@SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @sun8i_headphone_amp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_headphone_amp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = load i32, i32* @SUN8I_ADDA_PAEN_HP_CTRL, align 4
  %18 = load i32, i32* @SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = load i32, i32* @SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %19, i32 %21)
  %23 = call i32 @msleep(i32 700)
  br label %35

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = load i32, i32* @SUN8I_ADDA_PAEN_HP_CTRL, align 4
  %31 = load i32, i32* @SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %28, %24
  br label %35

35:                                               ; preds = %34, %15
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
