; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ALC5632_PWR_MANAG_ADD2 = common dso_local global i32 0, align 4
@ALC5632_PWR_ADD2_PLL1 = common dso_local global i32 0, align 4
@ALC5632_PWR_ADD2_PLL2 = common dso_local global i32 0, align 4
@ALC5632_DAI_CONTROL = common dso_local global i32 0, align 4
@ALC5632_DAI_SDP_SLAVE_MODE = common dso_local global i32 0, align 4
@codec_master_pll_div = common dso_local global %struct.TYPE_4__* null, align 8
@codec_slave_pll_div = common dso_local global %struct.TYPE_4__* null, align 8
@ALC5632_GPCR2 = common dso_local global i32 0, align 4
@ALC5632_PLL1_CTRL = common dso_local global i32 0, align 4
@ALC5632_GPCR1 = common dso_local global i32 0, align 4
@ALC5632_GPCR1_CLK_SYS_SRC_SEL_PLL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @alc5632_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5632_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %21 = icmp slt i32 %20, 129
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 128
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %195

28:                                               ; preds = %22
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %30 = load i32, i32* @ALC5632_PWR_MANAG_ADD2, align 4
  %31 = load i32, i32* @ALC5632_PWR_ADD2_PLL1, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %34 = load i32, i32* @ALC5632_PWR_MANAG_ADD2, align 4
  %35 = load i32, i32* @ALC5632_PWR_ADD2_PLL2, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %38 = load i32, i32* @ALC5632_DAI_CONTROL, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @ALC5632_DAI_SDP_SLAVE_MODE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %195

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48, %45
  store i32 0, i32* %6, align 4
  br label %195

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %162 [
    i32 129, label %54
    i32 130, label %90
    i32 128, label %126
  ]

54:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %86, %54
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_master_pll_div, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  br label %89

85:                                               ; preds = %69, %60
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %55

89:                                               ; preds = %78, %55
  br label %165

90:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %91
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %96
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  store i32 130, i32* %14, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  br label %125

121:                                              ; preds = %105, %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %91

125:                                              ; preds = %114, %91
  br label %165

126:                                              ; preds = %52
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %158, %126
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %130 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %129)
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %161

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %132
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %141
  store i32 128, i32* %14, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @codec_slave_pll_div, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %15, align 4
  br label %161

157:                                              ; preds = %141, %132
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %127

161:                                              ; preds = %150, %127
  br label %165

162:                                              ; preds = %52
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %195

165:                                              ; preds = %161, %125, %89
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  br label %195

171:                                              ; preds = %165
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %173 = load i32, i32* @ALC5632_GPCR2, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %172, i32 %173, i32 %174)
  %176 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %177 = load i32, i32* @ALC5632_PLL1_CTRL, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %176, i32 %177, i32 %178)
  %180 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %181 = load i32, i32* @ALC5632_PWR_MANAG_ADD2, align 4
  %182 = load i32, i32* @ALC5632_PWR_ADD2_PLL1, align 4
  %183 = load i32, i32* @ALC5632_PWR_ADD2_PLL1, align 4
  %184 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %186 = load i32, i32* @ALC5632_PWR_MANAG_ADD2, align 4
  %187 = load i32, i32* @ALC5632_PWR_ADD2_PLL2, align 4
  %188 = load i32, i32* @ALC5632_PWR_ADD2_PLL2, align 4
  %189 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %185, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %191 = load i32, i32* @ALC5632_GPCR1, align 4
  %192 = load i32, i32* @ALC5632_GPCR1_CLK_SYS_SRC_SEL_PLL1, align 4
  %193 = load i32, i32* @ALC5632_GPCR1_CLK_SYS_SRC_SEL_PLL1, align 4
  %194 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %190, i32 %191, i32 %192, i32 %193)
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %171, %168, %162, %51, %44, %25
  %196 = load i32, i32* %6, align 4
  ret i32 %196
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
