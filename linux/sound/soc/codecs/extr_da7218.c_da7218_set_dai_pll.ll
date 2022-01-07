; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"PLL input clock %d below valid range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_2_TO_4_5_MHZ = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_2_TO_4_5_MHZ_VAL = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_4_5_TO_9_MHZ = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_4_5_TO_9_MHZ_VAL = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_9_TO_18_MHZ = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_9_TO_18_MHZ_VAL = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_18_TO_36_MHZ = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_18_TO_36_MHZ_VAL = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_36_TO_54_MHZ = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_36_TO_54_MHZ_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PLL input clock %d above valid range\0A\00", align 1
@DA7218_PLL_MODE_BYPASS = common dso_local global i32 0, align 4
@DA7218_PLL_CTRL = common dso_local global i32 0, align 4
@DA7218_PLL_INDIV_MASK = common dso_local global i32 0, align 4
@DA7218_PLL_MODE_MASK = common dso_local global i32 0, align 4
@DA7218_PLL_MODE_NORMAL = common dso_local global i32 0, align 4
@DA7218_PLL_MODE_SRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid PLL config\0A\00", align 1
@DA7218_BYTE_SHIFT = common dso_local global i64 0, align 8
@DA7218_BYTE_MASK = common dso_local global i64 0, align 8
@DA7218_PLL_FRAC_TOP = common dso_local global i32 0, align 4
@DA7218_PLL_FRAC_BOT = common dso_local global i32 0, align 4
@DA7218_PLL_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da7218_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.da7218_priv*, align 8
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
  %26 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %25)
  store %struct.da7218_priv* %26, %struct.da7218_priv** %13, align 8
  %27 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %28 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 2000000
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %36 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %171

41:                                               ; preds = %5
  %42 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %43 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 4500000
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @DA7218_PLL_INDIV_2_TO_4_5_MHZ, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* @DA7218_PLL_INDIV_2_TO_4_5_MHZ_VAL, align 4
  store i32 %48, i32* %16, align 4
  br label %95

49:                                               ; preds = %41
  %50 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %51 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 9000000
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @DA7218_PLL_INDIV_4_5_TO_9_MHZ, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* @DA7218_PLL_INDIV_4_5_TO_9_MHZ_VAL, align 4
  store i32 %56, i32* %16, align 4
  br label %94

57:                                               ; preds = %49
  %58 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %59 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 18000000
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @DA7218_PLL_INDIV_9_TO_18_MHZ, align 4
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* @DA7218_PLL_INDIV_9_TO_18_MHZ_VAL, align 4
  store i32 %64, i32* %16, align 4
  br label %93

65:                                               ; preds = %57
  %66 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %67 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %68, 36000000
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @DA7218_PLL_INDIV_18_TO_36_MHZ, align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* @DA7218_PLL_INDIV_18_TO_36_MHZ_VAL, align 4
  store i32 %72, i32* %16, align 4
  br label %92

73:                                               ; preds = %65
  %74 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %75 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %76, 54000000
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @DA7218_PLL_INDIV_36_TO_54_MHZ, align 4
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* @DA7218_PLL_INDIV_36_TO_54_MHZ_VAL, align 4
  store i32 %80, i32* %16, align 4
  br label %91

81:                                               ; preds = %73
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %86 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %171

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %62
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %94, %46
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.da7218_priv*, %struct.da7218_priv** %13, align 8
  %98 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = udiv i32 %99, %100
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %9, align 4
  switch i32 %103, label %123 [
    i32 130, label %104
    i32 129, label %115
    i32 128, label %119
  ]

104:                                              ; preds = %96
  %105 = load i32, i32* @DA7218_PLL_MODE_BYPASS, align 4
  %106 = load i32, i32* %14, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %14, align 4
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %109 = load i32, i32* @DA7218_PLL_CTRL, align 4
  %110 = load i32, i32* @DA7218_PLL_INDIV_MASK, align 4
  %111 = load i32, i32* @DA7218_PLL_MODE_MASK, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %108, i32 %109, i32 %112, i32 %113)
  store i32 0, i32* %6, align 4
  br label %171

115:                                              ; preds = %96
  %116 = load i32, i32* @DA7218_PLL_MODE_NORMAL, align 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %130

119:                                              ; preds = %96
  %120 = load i32, i32* @DA7218_PLL_MODE_SRM, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %130

123:                                              ; preds = %96
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %125 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %171

130:                                              ; preds = %119, %115
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %20, align 4
  %133 = udiv i32 %131, %132
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %20, align 4
  %136 = urem i32 %134, %135
  %137 = zext i32 %136 to i64
  %138 = mul i64 %137, 8192
  store i64 %138, i64* %21, align 8
  %139 = load i64, i64* %21, align 8
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @do_div(i64 %139, i32 %140)
  %142 = load i64, i64* %21, align 8
  %143 = load i64, i64* @DA7218_BYTE_SHIFT, align 8
  %144 = lshr i64 %142, %143
  %145 = load i64, i64* @DA7218_BYTE_MASK, align 8
  %146 = and i64 %144, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %17, align 4
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* @DA7218_BYTE_MASK, align 8
  %150 = and i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %18, align 4
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %153 = load i32, i32* @DA7218_PLL_FRAC_TOP, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %152, i32 %153, i32 %154)
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %157 = load i32, i32* @DA7218_PLL_FRAC_BOT, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %156, i32 %157, i32 %158)
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %161 = load i32, i32* @DA7218_PLL_INTEGER, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %160, i32 %161, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %165 = load i32, i32* @DA7218_PLL_CTRL, align 4
  %166 = load i32, i32* @DA7218_PLL_MODE_MASK, align 4
  %167 = load i32, i32* @DA7218_PLL_INDIV_MASK, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %168, i32 %169)
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %130, %123, %104, %81, %31
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
