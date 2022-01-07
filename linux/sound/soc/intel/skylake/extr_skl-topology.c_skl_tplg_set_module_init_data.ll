; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_set_module_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_set_module_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.snd_kcontrol_new*, %struct.skl_module_cfg* }
%struct.snd_kcontrol_new = type { i32, i64 }
%struct.skl_module_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.soc_bytes_ext = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.skl_algo_data = type { i64, i32, i64 }

@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@SKL_PARAM_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*)* @skl_tplg_set_module_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_set_module_init_data(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_widget*, align 8
  %3 = alloca %struct.snd_kcontrol_new*, align 8
  %4 = alloca %struct.soc_bytes_ext*, align 8
  %5 = alloca %struct.skl_algo_data*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %2, align 8
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 2
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  store %struct.skl_module_cfg* %10, %struct.skl_module_cfg** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %61, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  %18 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %18, i32 0, i32 1
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i64 %22
  store %struct.snd_kcontrol_new* %23, %struct.snd_kcontrol_new** %3, align 8
  %24 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %17
  %31 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %3, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %34, %struct.soc_bytes_ext** %4, align 8
  %35 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %4, align 8
  %36 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.skl_algo_data*
  store %struct.skl_algo_data* %39, %struct.skl_algo_data** %5, align 8
  %40 = load %struct.skl_algo_data*, %struct.skl_algo_data** %5, align 8
  %41 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SKL_PARAM_INIT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %61

46:                                               ; preds = %30
  %47 = load %struct.skl_algo_data*, %struct.skl_algo_data** %5, align 8
  %48 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32* %50, i32** %53, align 8
  %54 = load %struct.skl_algo_data*, %struct.skl_algo_data** %5, align 8
  %55 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %58 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %64

60:                                               ; preds = %17
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %11

64:                                               ; preds = %46, %11
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
