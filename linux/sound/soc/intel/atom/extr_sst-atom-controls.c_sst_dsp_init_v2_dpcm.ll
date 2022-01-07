; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_dsp_init_v2_dpcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_dsp_init_v2_dpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.sst_data = type { i32 }

@sst_gain_controls = common dso_local global i32 0, align 4
@SST_MAX_BIN_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sst_dapm_widgets = common dso_local global i32 0, align 4
@intercon = common dso_local global i32 0, align 4
@SST_GAIN_MUTE_DEFAULT = common dso_local global i32 0, align 4
@sst_gains = common dso_local global %struct.TYPE_2__* null, align 8
@SST_GAIN_VOLUME_DEFAULT = common dso_local global i8* null, align 8
@SST_GAIN_RAMP_DURATION_DEFAULT = common dso_local global i32 0, align 4
@sst_algo_controls = common dso_local global i32 0, align 4
@sst_slot_controls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_dsp_init_v2_dpcm(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.sst_data*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.sst_data* %12, %struct.sst_data** %7, align 8
  %13 = load i32, i32* @sst_gain_controls, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = sdiv i32 %14, 3
  store i32 %15, i32* %8, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SST_MAX_BIN_BYTES, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @devm_kzalloc(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %23 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %25 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %121

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %33 = load i32, i32* @sst_dapm_widgets, align 4
  %34 = load i32, i32* @sst_dapm_widgets, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %32, i32 %33, i32 %35)
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %38 = load i32, i32* @intercon, align 4
  %39 = load i32, i32* @intercon, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %37, i32 %38, i32 %40)
  %42 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_soc_dapm_new_widgets(i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %75, %31
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i32, i32* @SST_GAIN_MUTE_DEFAULT, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sst_gains, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 %51, i32* %56, align 8
  %57 = load i8*, i8** @SST_GAIN_VOLUME_DEFAULT, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sst_gains, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i8* %57, i8** %62, align 8
  %63 = load i8*, i8** @SST_GAIN_VOLUME_DEFAULT, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sst_gains, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i8* %63, i8** %68, align 8
  %69 = load i32, i32* @SST_GAIN_RAMP_DURATION_DEFAULT, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sst_gains, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = load i32, i32* @sst_gain_controls, align 4
  %81 = load i32, i32* @sst_gain_controls, align 4
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %79, i32 %80, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %121

88:                                               ; preds = %78
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %90 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sst_algo_control_init(i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %121

97:                                               ; preds = %88
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = load i32, i32* @sst_algo_controls, align 4
  %100 = load i32, i32* @sst_algo_controls, align 4
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %98, i32 %99, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %121

107:                                              ; preds = %97
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = load i32, i32* @sst_slot_controls, align 4
  %110 = load i32, i32* @sst_slot_controls, align 4
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %108, i32 %109, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %121

117:                                              ; preds = %107
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %119 = call i32 @sst_map_modules_to_pipe(%struct.snd_soc_component* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %115, %105, %95, %86, %28
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_widgets(i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @sst_algo_control_init(i32) #1

declare dso_local i32 @sst_map_modules_to_pipe(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
