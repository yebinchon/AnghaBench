; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dsp_vad_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dsp_vad_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32 }

@SND_SOC_BIAS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rt5677_dsp_vad_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_dsp_vad_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.rt5677_priv*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt5677_priv* %10, %struct.rt5677_priv** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %23 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %25 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %24)
  %26 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %30 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %31 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rt5677_set_dsp_vad(%struct.snd_soc_component* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %2
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5677_set_dsp_vad(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
