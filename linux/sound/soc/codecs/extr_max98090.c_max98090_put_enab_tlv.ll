; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_put_enab_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_put_enab_tlv.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @max98090_put_enab_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_put_enab_tlv(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98090_priv*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %6, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.max98090_priv* %16, %struct.max98090_priv** %7, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %20, %struct.soc_mixer_control** %8, align 8
  %21 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %22 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fls(i32 %23)
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %36 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %40 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %51 [
    i32 129, label %42
    i32 128, label %45
    i32 130, label %48
  ]

42:                                               ; preds = %2
  %43 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %44 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %43, i32 0, i32 0
  store i32* %44, i32** %12, align 8
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %47 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %46, i32 0, i32 1
  store i32* %47, i32** %12, align 8
  br label %54

48:                                               ; preds = %2
  %49 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %50 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %49, i32 0, i32 2
  store i32* %50, i32** %12, align 8
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %87

54:                                               ; preds = %48, %45, %42
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %57 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %55, %58
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp uge i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %71

69:                                               ; preds = %54
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %73 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %74 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %78 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %76, %79
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %83 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %81, %84
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %75, i32 %80, i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %71, %51
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
