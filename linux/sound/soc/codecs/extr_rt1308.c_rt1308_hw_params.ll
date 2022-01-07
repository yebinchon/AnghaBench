; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt1308_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unsupported clock setting %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", align 1
@RT1308_I2S_DL_SEL_16B = common dso_local global i32 0, align 4
@RT1308_I2S_DL_SEL_20B = common dso_local global i32 0, align 4
@RT1308_I2S_DL_SEL_24B = common dso_local global i32 0, align 4
@RT1308_I2S_DL_SEL_8B = common dso_local global i32 0, align 4
@RT1308_DIV_FS_SYS_MASK = common dso_local global i32 0, align 4
@RT1308_DIV_FS_SYS_SFT = common dso_local global i32 0, align 4
@RT1308_I2S_SET_2 = common dso_local global i32 0, align 4
@RT1308_I2S_DL_SEL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@RT1308_CLK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt1308_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1308_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt1308_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt1308_priv* %20, %struct.rt1308_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %26 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %29 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rt1308_get_clk_info(i32 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %39 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %140

44:                                               ; preds = %3
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %140

57:                                               ; preds = %44
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %58, 32
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %62 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 32, %64
  %66 = mul nsw i32 %63, %65
  %67 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %68 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rt1308_priv*, %struct.rt1308_priv** %9, align 8
  %82 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84, i32 %87)
  %89 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %90 = call i32 @params_width(%struct.snd_pcm_hw_params* %89)
  switch i32 %90, label %107 [
    i32 16, label %91
    i32 20, label %95
    i32 24, label %99
    i32 8, label %103
  ]

91:                                               ; preds = %57
  %92 = load i32, i32* @RT1308_I2S_DL_SEL_16B, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %110

95:                                               ; preds = %57
  %96 = load i32, i32* @RT1308_I2S_DL_SEL_20B, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %110

99:                                               ; preds = %57
  %100 = load i32, i32* @RT1308_I2S_DL_SEL_24B, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %110

103:                                              ; preds = %57
  %104 = load i32, i32* @RT1308_I2S_DL_SEL_8B, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %110

107:                                              ; preds = %57
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %140

110:                                              ; preds = %103, %99, %95, %91
  %111 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %124 [
    i32 128, label %114
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* @RT1308_DIV_FS_SYS_MASK, align 4
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @RT1308_DIV_FS_SYS_SFT, align 4
  %118 = shl i32 %116, %117
  store i32 %118, i32* %11, align 4
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %120 = load i32, i32* @RT1308_I2S_SET_2, align 4
  %121 = load i32, i32* @RT1308_I2S_DL_SEL_MASK, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i32 %120, i32 %121, i32 %122)
  br label %134

124:                                              ; preds = %110
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %126 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %129 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %140

134:                                              ; preds = %114
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %136 = load i32, i32* @RT1308_CLK_1, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %135, i32 %136, i32 %137, i32 %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %124, %107, %49, %34
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rt1308_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
