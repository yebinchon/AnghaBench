; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_preloader_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_preloader_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.wm_adsp = type { i8*, i32, i64 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.soc_mixer_control = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s Preload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp2_preloader_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca %struct.wm_adsp*, align 8
  %10 = alloca [32 x i8], align 16
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm_adsp* %14, %struct.wm_adsp** %6, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %15)
  store %struct.snd_soc_dapm_context* %16, %struct.snd_soc_dapm_context** %7, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %20, %struct.soc_mixer_control** %8, align 8
  %21 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %22 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %23 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %21, i64 %26
  store %struct.wm_adsp* %27, %struct.wm_adsp** %9, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i8* %29)
  %31 = load %struct.wm_adsp*, %struct.wm_adsp** %9, align 8
  %32 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i8* %28, i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.wm_adsp*, %struct.wm_adsp** %9, align 8
  %43 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %55 = call i32 @snd_soc_component_force_enable_pin(%struct.snd_soc_component* %53, i8* %54)
  br label %60

56:                                               ; preds = %2
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %59 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %62 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %61)
  %63 = load %struct.wm_adsp*, %struct.wm_adsp** %9, align 8
  %64 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %63, i32 0, i32 1
  %65 = call i32 @flush_work(i32* %64)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @snd_soc_component_force_enable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
