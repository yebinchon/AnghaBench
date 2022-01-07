; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6routing.c_msm_routing_put_audio_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6routing.c_msm_routing_put_audio_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.msm_routing_data = type { %struct.session_data* }
%struct.session_data = type { i32 }
%struct.soc_mixer_control = type { i32, i32 }
%struct.snd_soc_dapm_update = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @msm_routing_put_audio_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_routing_put_audio_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.msm_routing_data*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca %struct.snd_soc_dapm_update*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.session_data*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %5, align 8
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context* %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.msm_routing_data* @dev_get_drvdata(i32 %19)
  store %struct.msm_routing_data* %20, %struct.msm_routing_data** %7, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %24, %struct.soc_mixer_control** %8, align 8
  store %struct.snd_soc_dapm_update* null, %struct.snd_soc_dapm_update** %9, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.msm_routing_data*, %struct.msm_routing_data** %7, align 8
  %32 = getelementptr inbounds %struct.msm_routing_data, %struct.msm_routing_data* %31, i32 0, i32 0
  %33 = load %struct.session_data*, %struct.session_data** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.session_data, %struct.session_data* %33, i64 %35
  store %struct.session_data* %36, %struct.session_data** %12, align 8
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %2
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.session_data*, %struct.session_data** %12, align 8
  %48 = getelementptr inbounds %struct.session_data, %struct.session_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %51 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %9, align 8
  %52 = call i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context* %49, %struct.snd_kcontrol* %50, i32 1, %struct.snd_soc_dapm_update* %51)
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.session_data*, %struct.session_data** %12, align 8
  %55 = getelementptr inbounds %struct.session_data, %struct.session_data* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 4
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %58 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %9, align 8
  %59 = call i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context* %56, %struct.snd_kcontrol* %57, i32 0, %struct.snd_soc_dapm_update* %58)
  br label %60

60:                                               ; preds = %53, %45
  ret i32 1
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context*) #1

declare dso_local %struct.msm_routing_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.snd_soc_dapm_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
