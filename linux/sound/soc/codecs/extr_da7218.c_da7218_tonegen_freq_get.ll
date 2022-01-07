; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_tonegen_freq_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_tonegen_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i32 }
%struct.soc_mixer_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @da7218_tonegen_freq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_tonegen_freq_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.da7218_priv*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.da7218_priv* %15, %struct.da7218_priv** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %19, %struct.soc_mixer_control** %8, align 8
  %20 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %21 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.da7218_priv*, %struct.da7218_priv** %7, align 8
  %24 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @regmap_raw_read(i32 %25, i32 %26, i32* %10, i32 2)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %34, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %30
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
