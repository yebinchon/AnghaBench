; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_setup_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_setup_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.tas2552_data = type { i32, i32, i64 }

@TAS2552_PLL_CLKIN_BCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TAS2552_CFG_2 = common dso_local global i32 0, align 4
@TAS2552_PLL_ENABLE = common dso_local global i32 0, align 4
@TAS2552_PLL_CTRL_2 = common dso_local global i32 0, align 4
@TAS2552_PLL_BYPASS = common dso_local global i32 0, align 4
@TAS2552_PLL_SRC_MASK = common dso_local global i32 0, align 4
@TAS2552_PLL_CTRL_1 = common dso_local global i32 0, align 4
@TAS2552_PLL_CLKIN_1_8_FIXED = common dso_local global i32 0, align 4
@TAS2552_CFG_1 = common dso_local global i32 0, align 4
@TAS2552_PLL_J_MASK = common dso_local global i32 0, align 4
@TAS2552_PLL_CTRL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_pcm_hw_params*)* @tas2552_setup_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas2552_setup_pll(%struct.snd_soc_component* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.tas2552_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.tas2552_data* @dev_get_drvdata(i32 %19)
  store %struct.tas2552_data* %20, %struct.tas2552_data** %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = mul nsw i32 %22, 512
  store i32 %23, i32* %8, align 4
  %24 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %25 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %2
  %30 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %31 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TAS2552_PLL_CLKIN_BCLK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %173

38:                                               ; preds = %29
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %40 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %42 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %38, %2
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %50 = load i32, i32* @TAS2552_CFG_2, align 4
  %51 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %49, i32 %50)
  %52 = load i32, i32* @TAS2552_PLL_ENABLE, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %55 = load i32, i32* @TAS2552_CFG_2, align 4
  %56 = load i32, i32* @TAS2552_PLL_ENABLE, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %48
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %67 = load i32, i32* @TAS2552_PLL_CTRL_2, align 4
  %68 = load i32, i32* @TAS2552_PLL_BYPASS, align 4
  %69 = load i32, i32* @TAS2552_PLL_BYPASS, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  br label %167

71:                                               ; preds = %62
  %72 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %73 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 3
  %76 = load i32, i32* @TAS2552_PLL_SRC_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %15, align 4
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %79 = load i32, i32* @TAS2552_PLL_CTRL_1, align 4
  %80 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = ashr i32 %81, 7
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %145, %71
  %84 = load i32, i32* %8, align 4
  %85 = mul i32 %84, 2
  %86 = load i32, i32* %16, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = udiv i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %9, align 4
  %93 = urem i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = udiv i32 %94, 10000
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add i32 %97, 1
  %99 = udiv i32 %96, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %9, align 4
  %102 = urem i32 %101, 10000
  %103 = sub i32 9999, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %13, align 4
  %106 = udiv i32 %104, %105
  %107 = load i32, i32* %12, align 4
  %108 = sub i32 %106, %107
  %109 = mul i32 %103, %108
  %110 = udiv i32 %109, 10000
  %111 = add i32 %100, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %83
  %115 = load i32, i32* %9, align 4
  %116 = icmp ult i32 %115, 512000
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp ugt i32 %118, 9200000
  br i1 %119, label %120, label %146

120:                                              ; preds = %117, %114
  %121 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %122 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @TAS2552_PLL_CLKIN_BCLK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  store i32 1800000, i32* %9, align 4
  %127 = load i32, i32* @TAS2552_PLL_CLKIN_1_8_FIXED, align 4
  %128 = shl i32 %127, 3
  %129 = load i32, i32* @TAS2552_PLL_SRC_MASK, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %15, align 4
  br label %145

131:                                              ; preds = %120
  %132 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %133 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %132)
  store i32 %133, i32* %9, align 4
  %134 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %135 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* @TAS2552_PLL_CLKIN_BCLK, align 4
  %142 = shl i32 %141, 3
  %143 = load i32, i32* @TAS2552_PLL_SRC_MASK, align 4
  %144 = and i32 %142, %143
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %131, %126
  br label %83

146:                                              ; preds = %117, %83
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %148 = load i32, i32* @TAS2552_CFG_1, align 4
  %149 = load i32, i32* @TAS2552_PLL_SRC_MASK, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %153 = load i32, i32* @TAS2552_PLL_CTRL_1, align 4
  %154 = load i32, i32* @TAS2552_PLL_J_MASK, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %158 = load i32, i32* @TAS2552_PLL_CTRL_2, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @TAS2552_PLL_D_UPPER(i32 %159)
  %161 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %157, i32 %158, i32 %160)
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %163 = load i32, i32* @TAS2552_PLL_CTRL_3, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @TAS2552_PLL_D_LOWER(i32 %164)
  %166 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %162, i32 %163, i32 %165)
  br label %167

167:                                              ; preds = %146, %65
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %169 = load i32, i32* @TAS2552_CFG_2, align 4
  %170 = load i32, i32* @TAS2552_PLL_ENABLE, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %168, i32 %169, i32 %170, i32 %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %167, %35
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.tas2552_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @TAS2552_PLL_D_UPPER(i32) #1

declare dso_local i32 @TAS2552_PLL_D_LOWER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
