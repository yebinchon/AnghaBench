; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_out_vu.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_out_vu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.soc_mixer_control = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8580_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8580_out_vu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_out_vu(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_mixer_control*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8580_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %15, %struct.soc_mixer_control** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %7, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = call %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8580_priv* %19, %struct.wm8580_priv** %8, align 8
  %20 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %21 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %24 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.wm8580_priv*, %struct.wm8580_priv** %8, align 8
  %27 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regcache_cache_only(i32 %28, i32 1)
  %30 = load %struct.wm8580_priv*, %struct.wm8580_priv** %8, align 8
  %31 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 256, i32 0)
  %35 = load %struct.wm8580_priv*, %struct.wm8580_priv** %8, align 8
  %36 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 256, i32 0)
  %40 = load %struct.wm8580_priv*, %struct.wm8580_priv** %8, align 8
  %41 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regcache_cache_only(i32 %42, i32 0)
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %46 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %44, %struct.snd_ctl_elem_value* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %2
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 256, i32 256)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 256, i32 256)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %49
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
