; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8900_REG_CLOCKING1 = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO1 = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO3 = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO4 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_BCLK_DIR = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO3_ADCLRC_DIR = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO4_DACLRC_DIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO1_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO1_LRCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO1_BCLK_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8900_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = load i32, i32* @WM8900_REG_AUDIO1, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = load i32, i32* @WM8900_REG_AUDIO3, align 4
  %22 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = load i32, i32* @WM8900_REG_AUDIO4, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %75 [
    i32 137, label %29
    i32 138, label %42
    i32 140, label %53
    i32 139, label %63
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @WM8900_REG_CLOCKING1_BCLK_DIR, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @WM8900_REG_AUDIO3_ADCLRC_DIR, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @WM8900_REG_AUDIO4_DACLRC_DIR, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %78

42:                                               ; preds = %2
  %43 = load i32, i32* @WM8900_REG_CLOCKING1_BCLK_DIR, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @WM8900_REG_AUDIO3_ADCLRC_DIR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @WM8900_REG_AUDIO4_DACLRC_DIR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %78

53:                                               ; preds = %2
  %54 = load i32, i32* @WM8900_REG_CLOCKING1_BCLK_DIR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @WM8900_REG_AUDIO3_ADCLRC_DIR, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @WM8900_REG_AUDIO4_DACLRC_DIR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %78

63:                                               ; preds = %2
  %64 = load i32, i32* @WM8900_REG_CLOCKING1_BCLK_DIR, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @WM8900_REG_AUDIO3_ADCLRC_DIR, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @WM8900_REG_AUDIO4_DACLRC_DIR, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %78

75:                                               ; preds = %2
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %200

78:                                               ; preds = %63, %53, %42, %29
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %116 [
    i32 136, label %82
    i32 135, label %90
    i32 134, label %97
    i32 128, label %104
    i32 131, label %109
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @WM8900_REG_AUDIO1_AIF_FMT_MASK, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @WM8900_REG_AUDIO1_LRCLK_INV, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %119

90:                                               ; preds = %78
  %91 = load i32, i32* @WM8900_REG_AUDIO1_AIF_FMT_MASK, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @WM8900_REG_AUDIO1_LRCLK_INV, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %119

97:                                               ; preds = %78
  %98 = load i32, i32* @WM8900_REG_AUDIO1_AIF_FMT_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, 16
  store i32 %103, i32* %8, align 4
  br label %119

104:                                              ; preds = %78
  %105 = load i32, i32* @WM8900_REG_AUDIO1_AIF_FMT_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %119

109:                                              ; preds = %78
  %110 = load i32, i32* @WM8900_REG_AUDIO1_AIF_FMT_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, 8
  store i32 %115, i32* %8, align 4
  br label %119

116:                                              ; preds = %78
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %200

119:                                              ; preds = %109, %104, %97, %90, %82
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %122 = and i32 %120, %121
  switch i32 %122, label %180 [
    i32 136, label %123
    i32 135, label %123
    i32 134, label %140
    i32 128, label %140
    i32 131, label %140
  ]

123:                                              ; preds = %119, %119
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %126 = and i32 %124, %125
  switch i32 %126, label %136 [
    i32 129, label %127
    i32 132, label %132
  ]

127:                                              ; preds = %123
  %128 = load i32, i32* @WM8900_REG_AUDIO1_BCLK_INV, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %139

132:                                              ; preds = %123
  %133 = load i32, i32* @WM8900_REG_AUDIO1_BCLK_INV, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %200

139:                                              ; preds = %132, %127
  br label %183

140:                                              ; preds = %119, %119, %119
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %143 = and i32 %141, %142
  switch i32 %143, label %176 [
    i32 129, label %144
    i32 133, label %153
    i32 132, label %160
    i32 130, label %168
  ]

144:                                              ; preds = %140
  %145 = load i32, i32* @WM8900_REG_AUDIO1_BCLK_INV, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @WM8900_REG_AUDIO1_LRCLK_INV, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %179

153:                                              ; preds = %140
  %154 = load i32, i32* @WM8900_REG_AUDIO1_BCLK_INV, align 4
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @WM8900_REG_AUDIO1_LRCLK_INV, align 4
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %179

160:                                              ; preds = %140
  %161 = load i32, i32* @WM8900_REG_AUDIO1_BCLK_INV, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* @WM8900_REG_AUDIO1_LRCLK_INV, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %8, align 4
  br label %179

168:                                              ; preds = %140
  %169 = load i32, i32* @WM8900_REG_AUDIO1_BCLK_INV, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* @WM8900_REG_AUDIO1_LRCLK_INV, align 4
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %179

176:                                              ; preds = %140
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %200

179:                                              ; preds = %168, %160, %153, %144
  br label %183

180:                                              ; preds = %119
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %200

183:                                              ; preds = %179, %139
  %184 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %185 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %184, i32 %185, i32 %186)
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %189 = load i32, i32* @WM8900_REG_AUDIO1, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %188, i32 %189, i32 %190)
  %192 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %193 = load i32, i32* @WM8900_REG_AUDIO3, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %192, i32 %193, i32 %194)
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %197 = load i32, i32* @WM8900_REG_AUDIO4, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %196, i32 %197, i32 %198)
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %183, %180, %176, %136, %116, %75
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
