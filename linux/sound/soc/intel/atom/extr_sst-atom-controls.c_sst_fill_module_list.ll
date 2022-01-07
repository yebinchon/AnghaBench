; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_module_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_module_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_widget = type { %struct.sst_ids*, i32 }
%struct.sst_ids = type { i32, i32 }
%struct.sst_module = type { i32, %struct.snd_kcontrol* }
%struct.snd_soc_component = type { i32 }
%struct.sst_gain_mixer_control = type { %struct.snd_soc_dapm_widget* }
%struct.sst_algo_control = type { %struct.snd_soc_dapm_widget* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SST_MODULE_GAIN = common dso_local global i32 0, align 4
@SST_MODULE_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invoked for unknown type %d module %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_soc_dapm_widget*, i32)* @sst_fill_module_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_fill_module_list(%struct.snd_kcontrol* %0, %struct.snd_soc_dapm_widget* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_module*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.sst_ids*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sst_gain_mixer_control*, align 8
  %13 = alloca %struct.sst_algo_control*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sst_module* null, %struct.sst_module** %8, align 8
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %9, align 8
  %18 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %18, i32 0, i32 0
  %20 = load %struct.sst_ids*, %struct.sst_ids** %19, align 8
  store %struct.sst_ids* %20, %struct.sst_ids** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sst_module* @devm_kzalloc(i32 %23, i32 16, i32 %24)
  store %struct.sst_module* %25, %struct.sst_module** %8, align 8
  %26 = load %struct.sst_module*, %struct.sst_module** %8, align 8
  %27 = icmp ne %struct.sst_module* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SST_MODULE_GAIN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.sst_gain_mixer_control*
  store %struct.sst_gain_mixer_control* %40, %struct.sst_gain_mixer_control** %12, align 8
  %41 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %42 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %12, align 8
  %43 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %42, i32 0, i32 0
  store %struct.snd_soc_dapm_widget* %41, %struct.snd_soc_dapm_widget** %43, align 8
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %45 = load %struct.sst_module*, %struct.sst_module** %8, align 8
  %46 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %45, i32 0, i32 1
  store %struct.snd_kcontrol* %44, %struct.snd_kcontrol** %46, align 8
  %47 = load %struct.sst_module*, %struct.sst_module** %8, align 8
  %48 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %47, i32 0, i32 0
  %49 = load %struct.sst_ids*, %struct.sst_ids** %10, align 8
  %50 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %49, i32 0, i32 1
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  br label %86

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SST_MODULE_ALGO, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = bitcast i8* %60 to %struct.sst_algo_control*
  store %struct.sst_algo_control* %61, %struct.sst_algo_control** %13, align 8
  %62 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %63 = load %struct.sst_algo_control*, %struct.sst_algo_control** %13, align 8
  %64 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %63, i32 0, i32 0
  store %struct.snd_soc_dapm_widget* %62, %struct.snd_soc_dapm_widget** %64, align 8
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %66 = load %struct.sst_module*, %struct.sst_module** %8, align 8
  %67 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %66, i32 0, i32 1
  store %struct.snd_kcontrol* %65, %struct.snd_kcontrol** %67, align 8
  %68 = load %struct.sst_module*, %struct.sst_module** %8, align 8
  %69 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %68, i32 0, i32 0
  %70 = load %struct.sst_ids*, %struct.sst_ids** %10, align 8
  %71 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  br label %85

73:                                               ; preds = %52
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %73, %56
  br label %86

86:                                               ; preds = %85, %35
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %28
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.sst_module* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
