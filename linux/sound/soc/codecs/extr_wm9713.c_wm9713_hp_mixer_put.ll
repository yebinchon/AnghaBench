; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_wm9713_hp_mixer_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_wm9713_hp_mixer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm9713_priv = type { i32*, i32 }
%struct.soc_mixer_control = type { i32 }
%struct.snd_soc_dapm_update = type { i32, i32, i32, %struct.snd_kcontrol* }

@wm9713_mixer_mute_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm9713_hp_mixer_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_hp_mixer_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm9713_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.soc_mixer_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_soc_dapm_update, align 8
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %16)
  store %struct.snd_soc_dapm_context* %17, %struct.snd_soc_dapm_context** %5, align 8
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %19 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context* %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.wm9713_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm9713_priv* %21, %struct.wm9713_priv** %7, align 8
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %32, %struct.soc_mixer_control** %9, align 8
  %33 = bitcast %struct.snd_soc_dapm_update* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 24, i1 false)
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %9, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %10, align 4
  %38 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %9, align 8
  %39 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %45 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %48 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %2
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %65 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %63
  store i32 %71, i32* %69, align 4
  br label %83

72:                                               ; preds = %2
  %73 = load i32, i32* %11, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %76 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %74
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %72, %62
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %86 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %84, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %132

96:                                               ; preds = %83
  %97 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 3
  store %struct.snd_kcontrol* %97, %struct.snd_kcontrol** %98, align 8
  %99 = load i32*, i32** @wm9713_mixer_mute_regs, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 2
  store i32 %103, i32* %104, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 0
  store i32 32768, i32* %105, align 8
  %106 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %107 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %96
  %115 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %116 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114, %96
  %124 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %127

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 1
  store i32 32768, i32* %126, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %129 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context* %128, %struct.snd_kcontrol* %129, i32 %130, %struct.snd_soc_dapm_update* %14)
  br label %132

132:                                              ; preds = %127, %83
  %133 = load %struct.wm9713_priv*, %struct.wm9713_priv** %7, align 8
  %134 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %15, align 4
  ret i32 %136
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context*) #1

declare dso_local %struct.wm9713_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.snd_soc_dapm_update*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
