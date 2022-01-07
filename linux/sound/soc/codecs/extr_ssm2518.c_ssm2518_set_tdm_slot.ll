; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ssm2518 = type { i32 }

@SSM2518_REG_SAI_CTRL1 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_MASK = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_I2S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_SLOT_WIDTH_16 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_SLOT_WIDTH_24 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_SLOT_WIDTH_32 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_MONO = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_TDM_2 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_TDM_4 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_TDM_8 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_SAI_TDM_16 = common dso_local global i32 0, align 4
@SSM2518_REG_CHAN_MAP = common dso_local global i32 0, align 4
@SSM2518_CHAN_MAP_LEFT_SLOT_OFFSET = common dso_local global i32 0, align 4
@SSM2518_CHAN_MAP_RIGHT_SLOT_OFFSET = common dso_local global i32 0, align 4
@SSM2518_REG_SAI_CTRL2 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_SLOT_WIDTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @ssm2518_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2518_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ssm2518*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ssm2518* @snd_soc_component_get_drvdata(i32 %20)
  store %struct.ssm2518* %21, %struct.ssm2518** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %26 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SSM2518_REG_SAI_CTRL1, align 4
  %29 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_MASK, align 4
  %30 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_I2S, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %149

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %149

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %149

50:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %72

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @__ffs(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %16, align 4
  br label %71

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @__ffs(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %63, %61
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %75, %72
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %149

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  switch i32 %87, label %94 [
    i32 16, label %88
    i32 24, label %90
    i32 32, label %92
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* @SSM2518_SAI_CTRL2_SLOT_WIDTH_16, align 4
  store i32 %89, i32* %14, align 4
  br label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @SSM2518_SAI_CTRL2_SLOT_WIDTH_24, align 4
  store i32 %91, i32* %14, align 4
  br label %97

92:                                               ; preds = %86
  %93 = load i32, i32* @SSM2518_SAI_CTRL2_SLOT_WIDTH_32, align 4
  store i32 %93, i32* %14, align 4
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %149

97:                                               ; preds = %92, %90, %88
  %98 = load i32, i32* %10, align 4
  switch i32 %98, label %109 [
    i32 1, label %99
    i32 2, label %101
    i32 4, label %103
    i32 8, label %105
    i32 16, label %107
  ]

99:                                               ; preds = %97
  %100 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_MONO, align 4
  store i32 %100, i32* %13, align 4
  br label %112

101:                                              ; preds = %97
  %102 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_TDM_2, align 4
  store i32 %102, i32* %13, align 4
  br label %112

103:                                              ; preds = %97
  %104 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_TDM_4, align 4
  store i32 %104, i32* %13, align 4
  br label %112

105:                                              ; preds = %97
  %106 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_TDM_8, align 4
  store i32 %106, i32* %13, align 4
  br label %112

107:                                              ; preds = %97
  %108 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_TDM_16, align 4
  store i32 %108, i32* %13, align 4
  br label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %149

112:                                              ; preds = %107, %105, %103, %101, %99
  %113 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %114 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SSM2518_REG_CHAN_MAP, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @SSM2518_CHAN_MAP_LEFT_SLOT_OFFSET, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @SSM2518_CHAN_MAP_RIGHT_SLOT_OFFSET, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %119, %122
  %124 = call i32 @regmap_write(i32 %115, i32 %116, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %6, align 4
  br label %149

129:                                              ; preds = %112
  %130 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %131 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SSM2518_REG_SAI_CTRL1, align 4
  %134 = load i32, i32* @SSM2518_SAI_CTRL1_SAI_MASK, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = load i32, i32* %17, align 4
  store i32 %140, i32* %6, align 4
  br label %149

141:                                              ; preds = %129
  %142 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %143 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SSM2518_REG_SAI_CTRL2, align 4
  %146 = load i32, i32* @SSM2518_SAI_CTRL2_SLOT_WIDTH_MASK, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @regmap_update_bits(i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %141, %139, %127, %109, %94, %83, %47, %38, %24
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local %struct.ssm2518* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
