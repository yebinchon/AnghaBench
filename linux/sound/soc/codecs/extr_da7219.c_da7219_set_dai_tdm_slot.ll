; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, i32, i64, %struct.clk** }
%struct.clk = type { i32 }

@DA7219_DAI_WCLK_IDX = common dso_local global i64 0, align 8
@DA7219_DAI_BCLK_IDX = common dso_local global i64 0, align 8
@DA7219_DAI_TDM_CTRL = common dso_local global i32 0, align 4
@DA7219_DAI_TDM_CH_EN_MASK = common dso_local global i32 0, align 4
@DA7219_DAI_TDM_MODE_EN_MASK = common dso_local global i32 0, align 4
@DA7219_DAI_TDM_MAX_SLOTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Invalid number of slots, max = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7219_DAI_OFFSET_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid frame offset %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set TDM BCLK rate %lu: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to set TDM BCLKs per WCLK %d: %d\0A\00", align 1
@DA7219_DAI_OFFSET_LOWER = common dso_local global i32 0, align 4
@DA7219_DAI_TDM_CH_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da7219_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.da7219_priv*, align 8
  %14 = alloca %struct.clk*, align 8
  %15 = alloca %struct.clk*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %25, align 8
  store %struct.snd_soc_component* %26, %struct.snd_soc_component** %12, align 8
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %28 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %27)
  store %struct.da7219_priv* %28, %struct.da7219_priv** %13, align 8
  %29 = load %struct.da7219_priv*, %struct.da7219_priv** %13, align 8
  %30 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %29, i32 0, i32 3
  %31 = load %struct.clk**, %struct.clk*** %30, align 8
  %32 = load i64, i64* @DA7219_DAI_WCLK_IDX, align 8
  %33 = getelementptr inbounds %struct.clk*, %struct.clk** %31, i64 %32
  %34 = load %struct.clk*, %struct.clk** %33, align 8
  store %struct.clk* %34, %struct.clk** %14, align 8
  %35 = load %struct.da7219_priv*, %struct.da7219_priv** %13, align 8
  %36 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %35, i32 0, i32 3
  %37 = load %struct.clk**, %struct.clk*** %36, align 8
  %38 = load i64, i64* @DA7219_DAI_BCLK_IDX, align 8
  %39 = getelementptr inbounds %struct.clk*, %struct.clk** %37, i64 %38
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  store %struct.clk* %40, %struct.clk** %15, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %5
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %45 = load i32, i32* @DA7219_DAI_TDM_CTRL, align 4
  %46 = load i32, i32* @DA7219_DAI_TDM_CH_EN_MASK, align 4
  %47 = load i32, i32* @DA7219_DAI_TDM_MODE_EN_MASK, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %48, i32 0)
  %50 = load %struct.da7219_priv*, %struct.da7219_priv** %13, align 8
  %51 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  store i32 0, i32* %6, align 4
  br label %156

52:                                               ; preds = %5
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ffs(i32 %53)
  %55 = sub i32 %54, 1
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %19, align 4
  %58 = lshr i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @fls(i32 %59)
  %61 = load i64, i64* @DA7219_DAI_TDM_MAX_SLOTS, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @DA7219_DAI_TDM_MAX_SLOTS, align 8
  %68 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %156

71:                                               ; preds = %52
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul i32 %72, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @DA7219_DAI_OFFSET_MAX, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %20, align 4
  %83 = zext i32 %82 to i64
  %84 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %156

87:                                               ; preds = %71
  %88 = load %struct.da7219_priv*, %struct.da7219_priv** %13, align 8
  %89 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %22, align 8
  %97 = load %struct.clk*, %struct.clk** %15, align 8
  %98 = icmp ne %struct.clk* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %92
  %100 = load %struct.clk*, %struct.clk** %14, align 8
  %101 = call i64 @clk_get_rate(%struct.clk* %100)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %22, align 8
  %104 = mul i64 %102, %103
  store i64 %104, i64* %18, align 8
  %105 = load %struct.clk*, %struct.clk** %15, align 8
  %106 = load i64, i64* %18, align 8
  %107 = call i32 @clk_set_rate(%struct.clk* %105, i64 %106)
  store i32 %107, i32* %23, align 4
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %18, align 8
  %115 = load i32, i32* %23, align 4
  %116 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %114, i32 %115)
  %117 = load i32, i32* %23, align 4
  store i32 %117, i32* %6, align 4
  br label %156

118:                                              ; preds = %99
  br label %134

119:                                              ; preds = %92
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %121 = load i64, i64* %22, align 8
  %122 = call i32 @da7219_set_bclks_per_wclk(%struct.snd_soc_component* %120, i64 %121)
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %23, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %127 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %22, align 8
  %130 = load i32, i32* %23, align 4
  %131 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %129, i32 %130)
  %132 = load i32, i32* %23, align 4
  store i32 %132, i32* %6, align 4
  br label %156

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %118
  br label %135

135:                                              ; preds = %134, %87
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @cpu_to_le16(i32 %136)
  store i32 %137, i32* %21, align 4
  %138 = load %struct.da7219_priv*, %struct.da7219_priv** %13, align 8
  %139 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DA7219_DAI_OFFSET_LOWER, align 4
  %142 = call i32 @regmap_bulk_write(i32 %140, i32 %141, i32* %21, i32 4)
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %144 = load i32, i32* @DA7219_DAI_TDM_CTRL, align 4
  %145 = load i32, i32* @DA7219_DAI_TDM_CH_EN_MASK, align 4
  %146 = load i32, i32* @DA7219_DAI_TDM_MODE_EN_MASK, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @DA7219_DAI_TDM_CH_EN_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* @DA7219_DAI_TDM_MODE_EN_MASK, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i32 %144, i32 %147, i32 %152)
  %154 = load %struct.da7219_priv*, %struct.da7219_priv** %13, align 8
  %155 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %135, %125, %110, %78, %63, %43
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @da7219_set_bclks_per_wclk(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
