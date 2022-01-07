; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"PLL input clock %d below valid range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_2_TO_4_5_MHZ = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_2_TO_4_5_MHZ_VAL = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_4_5_TO_9_MHZ = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_4_5_TO_9_MHZ_VAL = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_9_TO_18_MHZ = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_9_TO_18_MHZ_VAL = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_18_TO_36_MHZ = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_18_TO_36_MHZ_VAL = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_36_TO_54_MHZ = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_36_TO_54_MHZ_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PLL input clock %d above valid range\0A\00", align 1
@DA7219_PLL_MODE_BYPASS = common dso_local global i32 0, align 4
@DA7219_PLL_CTRL = common dso_local global i32 0, align 4
@DA7219_PLL_INDIV_MASK = common dso_local global i32 0, align 4
@DA7219_PLL_MODE_MASK = common dso_local global i32 0, align 4
@DA7219_PLL_MODE_NORMAL = common dso_local global i32 0, align 4
@DA7219_PLL_MODE_SRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid PLL config\0A\00", align 1
@DA7219_BYTE_SHIFT = common dso_local global i64 0, align 8
@DA7219_BYTE_MASK = common dso_local global i64 0, align 8
@DA7219_PLL_FRAC_TOP = common dso_local global i32 0, align 4
@DA7219_PLL_FRAC_BOT = common dso_local global i32 0, align 4
@DA7219_PLL_INTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da7219_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.da7219_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %18 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.da7219_priv* %18, %struct.da7219_priv** %8, align 8
  %19 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %20 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2000000
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %28 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %163

33:                                               ; preds = %3
  %34 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %35 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 4500000
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @DA7219_PLL_INDIV_2_TO_4_5_MHZ, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @DA7219_PLL_INDIV_2_TO_4_5_MHZ_VAL, align 4
  store i32 %40, i32* %11, align 4
  br label %87

41:                                               ; preds = %33
  %42 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %43 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 9000000
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @DA7219_PLL_INDIV_4_5_TO_9_MHZ, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @DA7219_PLL_INDIV_4_5_TO_9_MHZ_VAL, align 4
  store i32 %48, i32* %11, align 4
  br label %86

49:                                               ; preds = %41
  %50 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %51 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 18000000
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @DA7219_PLL_INDIV_9_TO_18_MHZ, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @DA7219_PLL_INDIV_9_TO_18_MHZ_VAL, align 4
  store i32 %56, i32* %11, align 4
  br label %85

57:                                               ; preds = %49
  %58 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %59 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 36000000
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @DA7219_PLL_INDIV_18_TO_36_MHZ, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @DA7219_PLL_INDIV_18_TO_36_MHZ_VAL, align 4
  store i32 %64, i32* %11, align 4
  br label %84

65:                                               ; preds = %57
  %66 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %67 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %68, 54000000
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @DA7219_PLL_INDIV_36_TO_54_MHZ, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @DA7219_PLL_INDIV_36_TO_54_MHZ_VAL, align 4
  store i32 %72, i32* %11, align 4
  br label %83

73:                                               ; preds = %65
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %78 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %163

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %62
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %46
  br label %87

87:                                               ; preds = %86, %38
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.da7219_priv*, %struct.da7219_priv** %8, align 8
  %90 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = udiv i32 %91, %92
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  switch i32 %95, label %115 [
    i32 130, label %96
    i32 129, label %107
    i32 128, label %111
  ]

96:                                               ; preds = %88
  %97 = load i32, i32* @DA7219_PLL_MODE_BYPASS, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %101 = load i32, i32* @DA7219_PLL_CTRL, align 4
  %102 = load i32, i32* @DA7219_PLL_INDIV_MASK, align 4
  %103 = load i32, i32* @DA7219_PLL_MODE_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %100, i32 %101, i32 %104, i32 %105)
  store i32 0, i32* %4, align 4
  br label %163

107:                                              ; preds = %88
  %108 = load i32, i32* @DA7219_PLL_MODE_NORMAL, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %122

111:                                              ; preds = %88
  %112 = load i32, i32* @DA7219_PLL_MODE_SRM, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %122

115:                                              ; preds = %88
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %117 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %163

122:                                              ; preds = %111, %107
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %15, align 4
  %125 = udiv i32 %123, %124
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %15, align 4
  %128 = urem i32 %126, %127
  %129 = zext i32 %128 to i64
  %130 = mul i64 %129, 8192
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @do_div(i64 %131, i32 %132)
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* @DA7219_BYTE_SHIFT, align 8
  %136 = lshr i64 %134, %135
  %137 = load i64, i64* @DA7219_BYTE_MASK, align 8
  %138 = and i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %12, align 4
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* @DA7219_BYTE_MASK, align 8
  %142 = and i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %145 = load i32, i32* @DA7219_PLL_FRAC_TOP, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %144, i32 %145, i32 %146)
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %149 = load i32, i32* @DA7219_PLL_FRAC_BOT, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %148, i32 %149, i32 %150)
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %153 = load i32, i32* @DA7219_PLL_INTEGER, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %152, i32 %153, i32 %154)
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %157 = load i32, i32* @DA7219_PLL_CTRL, align 4
  %158 = load i32, i32* @DA7219_PLL_INDIV_MASK, align 4
  %159 = load i32, i32* @DA7219_PLL_MODE_MASK, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %156, i32 %157, i32 %160, i32 %161)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %122, %115, %96, %73, %23
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
