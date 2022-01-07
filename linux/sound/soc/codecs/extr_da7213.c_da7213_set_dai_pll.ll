; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"32KHz only valid if codec is clock master\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_9_TO_18_MHZ = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_9_TO_18_MHZ_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PLL input clock %d below valid range\0A\00", align 1
@DA7213_PLL_INDIV_5_TO_9_MHZ = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_5_TO_9_MHZ_VAL = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_18_TO_36_MHZ = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_18_TO_36_MHZ_VAL = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_36_TO_54_MHZ = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_36_TO_54_MHZ_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"PLL input clock %d above valid range\0A\00", align 1
@DA7213_PLL_CTRL = common dso_local global i32 0, align 4
@DA7213_PLL_INDIV_MASK = common dso_local global i32 0, align 4
@DA7213_PLL_MODE_MASK = common dso_local global i32 0, align 4
@DA7213_PLL_SRM_EN = common dso_local global i32 0, align 4
@DA7213_PLL_FREQ_OUT_94310400 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"32KHz mode only valid with 32KHz MCLK\0A\00", align 1
@DA7213_PLL_32K_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid PLL config\0A\00", align 1
@DA7213_BYTE_SHIFT = common dso_local global i64 0, align 8
@DA7213_BYTE_MASK = common dso_local global i64 0, align 8
@DA7213_PLL_FRAC_TOP = common dso_local global i32 0, align 4
@DA7213_PLL_FRAC_BOT = common dso_local global i32 0, align 4
@DA7213_PLL_INTEGER = common dso_local global i32 0, align 4
@DA7213_PLL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da7213_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.da7213_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %23, align 8
  store %struct.snd_soc_component* %24, %struct.snd_soc_component** %12, align 8
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %26 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %25)
  store %struct.da7213_priv* %26, %struct.da7213_priv** %13, align 8
  %27 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %28 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 32768
  br i1 %30, label %31, label %46

31:                                               ; preds = %5
  %32 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %33 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %212

43:                                               ; preds = %31
  %44 = load i32, i32* @DA7213_PLL_INDIV_9_TO_18_MHZ, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* @DA7213_PLL_INDIV_9_TO_18_MHZ_VAL, align 4
  store i32 %45, i32* %16, align 4
  store i32 129, i32* %9, align 4
  store i32 3750000, i32* %20, align 4
  br label %113

46:                                               ; preds = %5
  %47 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %48 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 5000000
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %56 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %212

61:                                               ; preds = %46
  %62 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %63 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %64, 9000000
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @DA7213_PLL_INDIV_5_TO_9_MHZ, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* @DA7213_PLL_INDIV_5_TO_9_MHZ_VAL, align 4
  store i32 %68, i32* %16, align 4
  br label %106

69:                                               ; preds = %61
  %70 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %71 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 18000000
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @DA7213_PLL_INDIV_9_TO_18_MHZ, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* @DA7213_PLL_INDIV_9_TO_18_MHZ_VAL, align 4
  store i32 %76, i32* %16, align 4
  br label %105

77:                                               ; preds = %69
  %78 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %79 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 36000000
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @DA7213_PLL_INDIV_18_TO_36_MHZ, align 4
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* @DA7213_PLL_INDIV_18_TO_36_MHZ_VAL, align 4
  store i32 %84, i32* %16, align 4
  br label %104

85:                                               ; preds = %77
  %86 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %87 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sle i32 %88, 54000000
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @DA7213_PLL_INDIV_36_TO_54_MHZ, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* @DA7213_PLL_INDIV_36_TO_54_MHZ_VAL, align 4
  store i32 %92, i32* %16, align 4
  br label %103

93:                                               ; preds = %85
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %98 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %212

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %82
  br label %105

105:                                              ; preds = %104, %74
  br label %106

106:                                              ; preds = %105, %66
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %109 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %20, align 4
  br label %113

113:                                              ; preds = %107, %43
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %9, align 4
  switch i32 %115, label %149 [
    i32 131, label %116
    i32 130, label %124
    i32 128, label %125
    i32 129, label %130
  ]

116:                                              ; preds = %113
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %118 = load i32, i32* @DA7213_PLL_CTRL, align 4
  %119 = load i32, i32* @DA7213_PLL_INDIV_MASK, align 4
  %120 = load i32, i32* @DA7213_PLL_MODE_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %117, i32 %118, i32 %121, i32 %122)
  store i32 0, i32* %6, align 4
  br label %212

124:                                              ; preds = %113
  br label %156

125:                                              ; preds = %113
  %126 = load i32, i32* @DA7213_PLL_SRM_EN, align 4
  %127 = load i32, i32* %14, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* @DA7213_PLL_FREQ_OUT_94310400, align 4
  store i32 %129, i32* %11, align 4
  br label %156

130:                                              ; preds = %113
  %131 = load %struct.da7213_priv*, %struct.da7213_priv** %13, align 8
  %132 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 32768
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %137 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %212

142:                                              ; preds = %130
  %143 = load i32, i32* @DA7213_PLL_32K_MODE, align 4
  %144 = load i32, i32* @DA7213_PLL_SRM_EN, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* @DA7213_PLL_FREQ_OUT_94310400, align 4
  store i32 %148, i32* %11, align 4
  br label %156

149:                                              ; preds = %113
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %151 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @dev_err(i32 %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %212

156:                                              ; preds = %142, %125, %124
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %20, align 4
  %159 = udiv i32 %157, %158
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %20, align 4
  %162 = urem i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = mul i64 %163, 8192
  store i64 %164, i64* %21, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @do_div(i64 %165, i32 %166)
  %168 = load i64, i64* %21, align 8
  %169 = load i64, i64* @DA7213_BYTE_SHIFT, align 8
  %170 = lshr i64 %168, %169
  %171 = load i64, i64* @DA7213_BYTE_MASK, align 8
  %172 = and i64 %170, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %17, align 4
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* @DA7213_BYTE_MASK, align 8
  %176 = and i64 %174, %175
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %18, align 4
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %179 = load i32, i32* @DA7213_PLL_FRAC_TOP, align 4
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %178, i32 %179, i32 %180)
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %183 = load i32, i32* @DA7213_PLL_FRAC_BOT, align 4
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %182, i32 %183, i32 %184)
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %187 = load i32, i32* @DA7213_PLL_INTEGER, align 4
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %186, i32 %187, i32 %188)
  %190 = load i32, i32* @DA7213_PLL_EN, align 4
  %191 = load i32, i32* %14, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %14, align 4
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %194 = load i32, i32* @DA7213_PLL_CTRL, align 4
  %195 = load i32, i32* @DA7213_PLL_INDIV_MASK, align 4
  %196 = load i32, i32* @DA7213_PLL_MODE_MASK, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %193, i32 %194, i32 %197, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 129
  br i1 %201, label %202, label %211

202:                                              ; preds = %156
  %203 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %204 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %203, i32 240, i32 139)
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %206 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %205, i32 241, i32 3)
  %207 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %208 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %207, i32 241, i32 1)
  %209 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %210 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %209, i32 240, i32 0)
  br label %211

211:                                              ; preds = %202, %156
  store i32 0, i32* %6, align 4
  br label %212

212:                                              ; preds = %211, %149, %135, %116, %93, %51, %36
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
