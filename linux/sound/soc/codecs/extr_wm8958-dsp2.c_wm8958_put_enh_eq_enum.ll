; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_put_enh_eq_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_put_enh_eq_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, %struct.wm8994* }
%struct.wm8994 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8958_DSP2CLK_ENA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8958_put_enh_eq_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8958_put_enh_eq_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm8994_priv*, align 8
  %8 = alloca %struct.wm8994*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm8994_priv* %14, %struct.wm8994_priv** %7, align 8
  %15 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %16 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %15, i32 0, i32 1
  %17 = load %struct.wm8994*, %struct.wm8994** %16, align 8
  store %struct.wm8994* %17, %struct.wm8994** %8, align 8
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %26 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @WM8958_DSP2CLK_ENA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %2
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.wm8994*, %struct.wm8994** %8, align 8
  %41 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %51 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %45, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
