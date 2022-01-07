; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.lpass_pcm_data* }
%struct.lpass_pcm_data = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.lpass_data = type { i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid bit width given: %d\0A\00", align 1
@LPAIF_DMACTL_BURSTEN_INCR4 = common dso_local global i32 0, align 4
@LPAIF_DMACTL_FIFOWM_8 = common dso_local global i32 0, align 4
@LPAIF_DMACTL_WPSCNT_ONE = common dso_local global i32 0, align 4
@LPAIF_DMACTL_WPSCNT_TWO = common dso_local global i32 0, align 4
@LPAIF_DMACTL_WPSCNT_THREE = common dso_local global i32 0, align 4
@LPAIF_DMACTL_WPSCNT_FOUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid PCM config given: bw=%d, ch=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPAIF_DMACTL_WPSCNT_SIX = common dso_local global i32 0, align 4
@LPAIF_DMACTL_WPSCNT_EIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error writing to rdmactl reg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @lpass_platform_pcmops_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_pcmops_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.lpass_data*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca %struct.lpass_pcm_data*, align 8
  %11 = alloca %struct.lpass_variant*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 2
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %21, align 8
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %6, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %24 = load i32, i32* @DRV_NAME, align 4
  %25 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %23, i32 %24)
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %7, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = call %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %26)
  store %struct.lpass_data* %27, %struct.lpass_data** %8, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 1
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %29, align 8
  store %struct.snd_pcm_runtime* %30, %struct.snd_pcm_runtime** %9, align 8
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 0
  %33 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %32, align 8
  store %struct.lpass_pcm_data* %33, %struct.lpass_pcm_data** %10, align 8
  %34 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %35 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %34, i32 0, i32 1
  %36 = load %struct.lpass_variant*, %struct.lpass_variant** %35, align 8
  store %struct.lpass_variant* %36, %struct.lpass_variant** %11, align 8
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %38 = call i32 @params_format(%struct.snd_pcm_hw_params* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %40 = call i32 @params_channels(%struct.snd_pcm_hw_params* %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %16, align 4
  %44 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %10, align 8
  %45 = getelementptr inbounds %struct.lpass_pcm_data, %struct.lpass_pcm_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %48 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %19, align 4
  %51 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %10, align 8
  %52 = getelementptr inbounds %struct.lpass_pcm_data, %struct.lpass_pcm_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @snd_pcm_format_width(i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %2
  %59 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %60 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %3, align 4
  br label %162

65:                                               ; preds = %2
  %66 = load i32, i32* @LPAIF_DMACTL_BURSTEN_INCR4, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @LPAIF_DMACTL_AUDINTF(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @LPAIF_DMACTL_FIFOWM_8, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %17, align 4
  switch i32 %72, label %133 [
    i32 16, label %73
    i32 24, label %101
    i32 32, label %101
  ]

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  switch i32 %74, label %91 [
    i32 1, label %75
    i32 2, label %75
    i32 4, label %79
    i32 6, label %83
    i32 8, label %87
  ]

75:                                               ; preds = %73, %73
  %76 = load i32, i32* @LPAIF_DMACTL_WPSCNT_ONE, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %100

79:                                               ; preds = %73
  %80 = load i32, i32* @LPAIF_DMACTL_WPSCNT_TWO, align 4
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %100

83:                                               ; preds = %73
  %84 = load i32, i32* @LPAIF_DMACTL_WPSCNT_THREE, align 4
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %100

87:                                               ; preds = %73
  %88 = load i32, i32* @LPAIF_DMACTL_WPSCNT_FOUR, align 4
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %100

91:                                               ; preds = %73
  %92 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %93 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %162

100:                                              ; preds = %87, %83, %79, %75
  br label %142

101:                                              ; preds = %65, %65
  %102 = load i32, i32* %13, align 4
  switch i32 %102, label %123 [
    i32 1, label %103
    i32 2, label %107
    i32 4, label %111
    i32 6, label %115
    i32 8, label %119
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* @LPAIF_DMACTL_WPSCNT_ONE, align 4
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %132

107:                                              ; preds = %101
  %108 = load i32, i32* @LPAIF_DMACTL_WPSCNT_TWO, align 4
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %132

111:                                              ; preds = %101
  %112 = load i32, i32* @LPAIF_DMACTL_WPSCNT_FOUR, align 4
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %132

115:                                              ; preds = %101
  %116 = load i32, i32* @LPAIF_DMACTL_WPSCNT_SIX, align 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %132

119:                                              ; preds = %101
  %120 = load i32, i32* @LPAIF_DMACTL_WPSCNT_EIGHT, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %132

123:                                              ; preds = %101
  %124 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %125 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %162

132:                                              ; preds = %119, %115, %111, %107, %103
  br label %142

133:                                              ; preds = %65
  %134 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %135 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %162

142:                                              ; preds = %132, %100
  %143 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %144 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @LPAIF_DMACTL_REG(%struct.lpass_variant* %146, i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @regmap_write(i32 %145, i32 %149, i32 %150)
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %142
  %155 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %156 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %3, align 4
  br label %162

161:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %154, %133, %123, %91, %58
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @LPAIF_DMACTL_AUDINTF(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_DMACTL_REG(%struct.lpass_variant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
