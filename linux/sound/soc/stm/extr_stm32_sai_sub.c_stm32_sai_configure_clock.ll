; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_configure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32, i32, i32, i32, i32 }

@SAI_XCR1_OSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Wrong mclk ratio %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @stm32_sai_configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_configure_clock(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.stm32_sai_sub_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.stm32_sai_sub_data* %15, %struct.stm32_sai_sub_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %17 = call i32 @params_rate(%struct.snd_pcm_hw_params* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @stm32_sai_set_parent_clock(%struct.stm32_sai_sub_data* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %3, align 4
  br label %152

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %33 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_get_rate(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @STM_SAI_IS_F4(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %31
  %42 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %43 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %152

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 2, %48
  %50 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %51 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 3, %52
  %54 = icmp sge i32 %49, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %59 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 2, %60
  %62 = call i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data* %56, i32 %57, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %152

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %47
  br label %148

69:                                               ; preds = %31
  %70 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %71 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = mul i32 %76, 128
  %78 = call i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data* %74, i32 %75, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %152

83:                                               ; preds = %73
  br label %147

84:                                               ; preds = %69
  %85 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %86 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %84
  %90 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %91 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = udiv i32 %92, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 512
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @SAI_XCR1_OSR, align 4
  store i32 %98, i32* %8, align 4
  br label %111

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 256
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %152

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %97
  %112 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %113 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %116 = load i32, i32* @SAI_XCR1_OSR, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @regmap_update_bits(i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %122 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data* %119, i32 %120, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %152

129:                                              ; preds = %111
  br label %146

130:                                              ; preds = %84
  %131 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %132 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %135 = call i32 @params_rate(%struct.snd_pcm_hw_params* %134)
  %136 = mul nsw i32 %133, %135
  store i32 %136, i32* %11, align 4
  %137 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data* %137, i32 %138, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %3, align 4
  br label %152

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %129
  br label %147

147:                                              ; preds = %146, %83
  br label %148

148:                                              ; preds = %147, %68
  %149 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @stm32_sai_set_clk_div(%struct.stm32_sai_sub_data* %149, i32 %150)
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %143, %127, %102, %81, %65, %46, %28
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @stm32_sai_set_parent_clock(%struct.stm32_sai_sub_data*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @STM_SAI_IS_F4(i32) #1

declare dso_local i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data*, i32, i32) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @stm32_sai_set_clk_div(%struct.stm32_sai_sub_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
