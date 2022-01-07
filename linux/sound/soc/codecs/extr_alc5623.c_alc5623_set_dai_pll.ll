; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ALC5623_PWR_MANAG_ADD2 = common dso_local global i32 0, align 4
@ALC5623_PWR_ADD2_PLL = common dso_local global i32 0, align 4
@ALC5623_DAI_CONTROL = common dso_local global i32 0, align 4
@ALC5623_DAI_SDP_SLAVE_MODE = common dso_local global i32 0, align 4
@codec_master_pll_div = common dso_local global %struct.TYPE_4__* null, align 8
@codec_slave_pll_div = common dso_local global %struct.TYPE_4__* null, align 8
@ALC5623_GBL_CLK_PLL_SOUR_SEL_BITCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ALC5623_GLOBAL_CLK_CTRL_REG = common dso_local global i32 0, align 4
@ALC5623_PLL_CTRL = common dso_local global i32 0, align 4
@ALC5623_GBL_CLK_SYS_SOUR_SEL_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @alc5623_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5623_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_soc_component*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 129
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %153

28:                                               ; preds = %22
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %30 = load i32, i32* @ALC5623_PWR_MANAG_ADD2, align 4
  %31 = load i32, i32* @ALC5623_PWR_ADD2_PLL, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %34 = load i32, i32* @ALC5623_DAI_CONTROL, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @ALC5623_DAI_SDP_SLAVE_MODE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %153

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %41
  store i32 0, i32* %6, align 4
  br label %153

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %123 [
    i32 128, label %50
    i32 129, label %86
  ]

50:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %82, %50
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %54 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %56
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  br label %85

81:                                               ; preds = %65, %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %51

85:                                               ; preds = %74, %51
  br label %126

86:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %119, %86
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %89)
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %92
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load i32, i32* @ALC5623_GBL_CLK_PLL_SOUR_SEL_BITCLK, align 4
  store i32 %111, i32* %14, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  br label %122

118:                                              ; preds = %101, %92
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %87

122:                                              ; preds = %110, %87
  br label %126

123:                                              ; preds = %48
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %153

126:                                              ; preds = %122, %85
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %153

132:                                              ; preds = %126
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %134 = load i32, i32* @ALC5623_GLOBAL_CLK_CTRL_REG, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %133, i32 %134, i32 %135)
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %138 = load i32, i32* @ALC5623_PLL_CTRL, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %137, i32 %138, i32 %139)
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %142 = load i32, i32* @ALC5623_PWR_MANAG_ADD2, align 4
  %143 = load i32, i32* @ALC5623_PWR_ADD2_PLL, align 4
  %144 = load i32, i32* @ALC5623_PWR_ADD2_PLL, align 4
  %145 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* @ALC5623_GBL_CLK_SYS_SOUR_SEL_PLL, align 4
  %147 = load i32, i32* %14, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %14, align 4
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %150 = load i32, i32* @ALC5623_GLOBAL_CLK_CTRL_REG, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %149, i32 %150, i32 %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %132, %129, %123, %47, %40, %25
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
