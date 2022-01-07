; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_set_module_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_set_module_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.snd_kcontrol_new*, %struct.skl_module_cfg* }
%struct.snd_kcontrol_new = type { i32, i64 }
%struct.skl_module_cfg = type { %struct.skl_specific_cfg }
%struct.skl_specific_cfg = type { i64, i64, i32, i32* }
%struct.skl_dev = type { i32 }
%struct.soc_bytes_ext = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.skl_algo_data = type { i64, i64, i32, i64 }

@SKL_PARAM_SET = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.skl_dev*)* @skl_tplg_set_module_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_set_module_params(%struct.snd_soc_dapm_widget* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_module_cfg*, align 8
  %9 = alloca %struct.snd_kcontrol_new*, align 8
  %10 = alloca %struct.soc_bytes_ext*, align 8
  %11 = alloca %struct.skl_algo_data*, align 8
  %12 = alloca %struct.skl_specific_cfg*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 2
  %15 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %14, align 8
  store %struct.skl_module_cfg* %15, %struct.skl_module_cfg** %8, align 8
  %16 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %17 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %23 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SKL_PARAM_SET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %30 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %29, i32 0, i32 0
  store %struct.skl_specific_cfg* %30, %struct.skl_specific_cfg** %12, align 8
  %31 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %32 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %12, align 8
  %33 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %12, align 8
  %36 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.skl_specific_cfg*, %struct.skl_specific_cfg** %12, align 8
  %39 = getelementptr inbounds %struct.skl_specific_cfg, %struct.skl_specific_cfg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %42 = call i32 @skl_set_module_params(%struct.skl_dev* %31, i32* %34, i64 %37, i32 %40, %struct.skl_module_cfg* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %109

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %21, %2
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %105, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %49
  %56 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %56, i32 0, i32 1
  %58 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %58, i64 %60
  store %struct.snd_kcontrol_new* %61, %struct.snd_kcontrol_new** %9, align 8
  %62 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %63 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %55
  %69 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %70 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = bitcast i8* %72 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %73, %struct.soc_bytes_ext** %10, align 8
  %74 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %10, align 8
  %75 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.skl_algo_data*
  store %struct.skl_algo_data* %78, %struct.skl_algo_data** %11, align 8
  %79 = load %struct.skl_algo_data*, %struct.skl_algo_data** %11, align 8
  %80 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SKL_PARAM_SET, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %68
  %85 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %86 = load %struct.skl_algo_data*, %struct.skl_algo_data** %11, align 8
  %87 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.skl_algo_data*, %struct.skl_algo_data** %11, align 8
  %91 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.skl_algo_data*, %struct.skl_algo_data** %11, align 8
  %94 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %8, align 8
  %97 = call i32 @skl_set_module_params(%struct.skl_dev* %85, i32* %89, i64 %92, i32 %95, %struct.skl_module_cfg* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %68
  br label %104

104:                                              ; preds = %103, %55
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %49

108:                                              ; preds = %49
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %100, %45
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @skl_set_module_params(%struct.skl_dev*, i32*, i64, i32, %struct.skl_module_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
