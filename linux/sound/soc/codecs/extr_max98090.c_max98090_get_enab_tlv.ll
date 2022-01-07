; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_get_enab_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_get_enab_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @max98090_get_enab_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_get_enab_tlv(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98090_priv*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.max98090_priv* %15, %struct.max98090_priv** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %19, %struct.soc_mixer_control** %8, align 8
  %20 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %21 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fls(i32 %22)
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %27 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %28 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %43 [
    i32 129, label %34
    i32 128, label %37
    i32 130, label %40
  ]

34:                                               ; preds = %2
  %35 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %36 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %35, i32 0, i32 0
  store i32* %36, i32** %11, align 8
  br label %46

37:                                               ; preds = %2
  %38 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %39 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %38, i32 0, i32 1
  store i32* %39, i32** %11, align 8
  br label %46

40:                                               ; preds = %2
  %41 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %42 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %41, i32 0, i32 2
  store i32* %42, i32** %11, align 8
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %72

46:                                               ; preds = %40, %37, %34
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %49 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = lshr i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp uge i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = sub i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %65, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %43
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
