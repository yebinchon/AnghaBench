; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32, %struct.max98090_cdata* }
%struct.max98090_cdata = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_RATIO_NI_MSB = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_RATIO_NI_LSB = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_MODE = common dso_local global i32 0, align 4
@M98090_USE_M1_MASK = common dso_local global i32 0, align 4
@M98090_MAS_MASK = common dso_local global i32 0, align 4
@M98090_BSEL_64 = common dso_local global i32 0, align 4
@M98090_BSEL_48 = common dso_local global i32 0, align 4
@M98090_BSEL_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DAI clock mode unsupported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M98090_REG_MASTER_MODE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@M98090_DLY_MASK = common dso_local global i32 0, align 4
@M98090_RJ_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DAI format unsupported\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@M98090_WCI_MASK = common dso_local global i32 0, align 4
@M98090_BCI_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"DAI invert mode unsupported\00", align 1
@M98090_REG_INTERFACE_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @max98090_dai_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_dai_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98090_priv*, align 8
  %8 = alloca %struct.max98090_cdata*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.max98090_priv* %14, %struct.max98090_priv** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %17 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %19 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %18, i32 0, i32 3
  %20 = load %struct.max98090_cdata*, %struct.max98090_cdata** %19, align 8
  %21 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %20, i64 0
  store %struct.max98090_cdata* %21, %struct.max98090_cdata** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.max98090_cdata*, %struct.max98090_cdata** %8, align 8
  %24 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %152

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.max98090_cdata*, %struct.max98090_cdata** %8, align 8
  %30 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %80 [
    i32 136, label %34
    i32 139, label %47
    i32 137, label %79
    i32 138, label %79
  ]

34:                                               ; preds = %27
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = load i32, i32* @M98090_REG_CLOCK_RATIO_NI_MSB, align 4
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 0)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %39 = load i32, i32* @M98090_REG_CLOCK_RATIO_NI_LSB, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 0)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %42 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %43 = load i32, i32* @M98090_USE_M1_MASK, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %46 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %87

47:                                               ; preds = %27
  %48 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %49 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @M98090_MAS_MASK, align 4
  %54 = load i32, i32* @M98090_BSEL_64, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %76

58:                                               ; preds = %47
  %59 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %60 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @M98090_MAS_MASK, align 4
  %65 = load i32, i32* @M98090_BSEL_48, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @M98090_MAS_MASK, align 4
  %71 = load i32, i32* @M98090_BSEL_32, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %78 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %87

79:                                               ; preds = %27, %27
  br label %80

80:                                               ; preds = %27, %79
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %153

87:                                               ; preds = %76, %34
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %89 = load i32, i32* @M98090_REG_MASTER_MODE, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %88, i32 %89, i32 %90)
  store i32 0, i32* %9, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %105 [
    i32 134, label %95
    i32 131, label %99
    i32 128, label %100
    i32 135, label %104
  ]

95:                                               ; preds = %87
  %96 = load i32, i32* @M98090_DLY_MASK, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %112

99:                                               ; preds = %87
  br label %112

100:                                              ; preds = %87
  %101 = load i32, i32* @M98090_RJ_MASK, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %112

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %87, %104
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %107 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %153

112:                                              ; preds = %100, %99, %95
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %115 = and i32 %113, %114
  switch i32 %115, label %131 [
    i32 129, label %116
    i32 130, label %117
    i32 132, label %121
    i32 133, label %125
  ]

116:                                              ; preds = %112
  br label %138

117:                                              ; preds = %112
  %118 = load i32, i32* @M98090_WCI_MASK, align 4
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %138

121:                                              ; preds = %112
  %122 = load i32, i32* @M98090_BCI_MASK, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %138

125:                                              ; preds = %112
  %126 = load i32, i32* @M98090_BCI_MASK, align 4
  %127 = load i32, i32* @M98090_WCI_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %138

131:                                              ; preds = %112
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %133 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %153

138:                                              ; preds = %125, %121, %117, %116
  %139 = load %struct.max98090_priv*, %struct.max98090_priv** %7, align 8
  %140 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @M98090_BCI_MASK, align 4
  %145 = load i32, i32* %9, align 4
  %146 = xor i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %149 = load i32, i32* @M98090_REG_INTERFACE_FORMAT, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %2
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %131, %105, %80
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
