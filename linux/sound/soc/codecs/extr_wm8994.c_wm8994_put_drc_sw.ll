; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_put_drc_sw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_put_drc_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.soc_mixer_control = type { i64, i32 }
%struct.snd_soc_component = type { i32 }

@WM8994_AIF1DAC1_DRC_ENA_SHIFT = common dso_local global i64 0, align 8
@WM8994_AIF1ADC1L_DRC_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1ADC1R_DRC_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1DAC1_DRC_ENA_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8994_put_drc_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_put_drc_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_mixer_control*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %13, %struct.soc_mixer_control** %6, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %17 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WM8994_AIF1DAC1_DRC_ENA_SHIFT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @WM8994_AIF1ADC1L_DRC_ENA_MASK, align 4
  %23 = load i32, i32* @WM8994_AIF1ADC1R_DRC_ENA_MASK, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @WM8994_AIF1DAC1_DRC_ENA_MASK, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %29 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %30 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %48 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %46, %struct.snd_ctl_elem_value* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %42, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
