; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_i2s_in = type { i32, i32 }

@IMG_I2S_IN_CH_CTL_SW_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_FW_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_PACKH_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CTL_16PACK_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_16PACK_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMG_I2S_IN_CTL_ACTIVE_CH_SHIFT = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_FEN_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_FMODE_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CTL_ACTIVE_CHAN_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CTL = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @img_i2s_in_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_in_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.img_i2s_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = call %struct.img_i2s_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %23)
  store %struct.img_i2s_in* %24, %struct.img_i2s_in** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_format(%struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %22, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_channels(%struct.snd_pcm_hw_params* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = udiv i32 %31, 2
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %22, align 4
  switch i32 %33, label %58 [
    i32 128, label %34
    i32 129, label %44
    i32 130, label %51
  ]

34:                                               ; preds = %3
  store i32 64, i32* %12, align 4
  %35 = load i32, i32* @IMG_I2S_IN_CH_CTL_SW_MASK, align 4
  %36 = load i32, i32* %21, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* @IMG_I2S_IN_CH_CTL_FW_MASK, align 4
  %39 = load i32, i32* %21, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* @IMG_I2S_IN_CH_CTL_PACKH_MASK, align 4
  %42 = load i32, i32* %21, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %21, align 4
  br label %61

44:                                               ; preds = %3
  store i32 64, i32* %12, align 4
  %45 = load i32, i32* @IMG_I2S_IN_CH_CTL_SW_MASK, align 4
  %46 = load i32, i32* %21, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* @IMG_I2S_IN_CH_CTL_FW_MASK, align 4
  %49 = load i32, i32* %21, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %21, align 4
  br label %61

51:                                               ; preds = %3
  store i32 32, i32* %12, align 4
  %52 = load i32, i32* @IMG_I2S_IN_CTL_16PACK_MASK, align 4
  %53 = load i32, i32* %20, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* @IMG_I2S_IN_CH_CTL_16PACK_MASK, align 4
  %56 = load i32, i32* %21, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %21, align 4
  br label %61

58:                                               ; preds = %3
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %194

61:                                               ; preds = %51, %44, %34
  %62 = load i32, i32* %10, align 4
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %67 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 2
  %70 = icmp ugt i32 %65, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = urem i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %64, %61
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %194

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %79, 1
  %81 = load i32, i32* @IMG_I2S_IN_CTL_ACTIVE_CH_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %20, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %20, align 4
  %85 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @img_i2s_in_check_rate(%struct.img_i2s_in* %85, i32 %86, i32 %87, i32* %13, i32* %14)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %4, align 4
  br label %194

93:                                               ; preds = %78
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @IMG_I2S_IN_CH_CTL_FEN_MASK, align 4
  %98 = load i32, i32* %21, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @IMG_I2S_IN_CH_CTL_FMODE_MASK, align 4
  %105 = load i32, i32* %21, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %21, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* @IMG_I2S_IN_CTL_16PACK_MASK, align 4
  %109 = load i32, i32* @IMG_I2S_IN_CTL_ACTIVE_CHAN_MASK, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* @IMG_I2S_IN_CH_CTL_16PACK_MASK, align 4
  %112 = load i32, i32* @IMG_I2S_IN_CH_CTL_FEN_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IMG_I2S_IN_CH_CTL_FMODE_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @IMG_I2S_IN_CH_CTL_SW_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @IMG_I2S_IN_CH_CTL_FW_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @IMG_I2S_IN_CH_CTL_PACKH_MASK, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %19, align 4
  %122 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %123 = load i32, i32* @IMG_I2S_IN_CTL, align 4
  %124 = call i32 @img_i2s_in_readl(%struct.img_i2s_in* %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = load i32, i32* %20, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %17, align 4
  %131 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @IMG_I2S_IN_CTL, align 4
  %134 = call i32 @img_i2s_in_writel(%struct.img_i2s_in* %131, i32 %132, i32 %133)
  store i32 0, i32* %15, align 4
  br label %135

135:                                              ; preds = %145, %107
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %138 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @img_i2s_in_ch_disable(%struct.img_i2s_in* %142, i32 %143)
  br label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %135

148:                                              ; preds = %135
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %171, %148
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %152 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %149
  %156 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %159 = call i32 @img_i2s_in_ch_readl(%struct.img_i2s_in* %156, i32 %157, i32 %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %19, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %160, %162
  %164 = load i32, i32* %21, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %17, align 4
  %166 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %170 = call i32 @img_i2s_in_ch_writel(%struct.img_i2s_in* %166, i32 %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %155
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %149

174:                                              ; preds = %149
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %177 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %179 = call i32 @img_i2s_in_flush(%struct.img_i2s_in* %178)
  store i32 0, i32* %15, align 4
  br label %180

180:                                              ; preds = %190, %174
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %183 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load %struct.img_i2s_in*, %struct.img_i2s_in** %8, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @img_i2s_in_ch_enable(%struct.img_i2s_in* %187, i32 %188)
  br label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %180

193:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %193, %91, %75, %58
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.img_i2s_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @img_i2s_in_check_rate(%struct.img_i2s_in*, i32, i32, i32*, i32*) #1

declare dso_local i32 @img_i2s_in_readl(%struct.img_i2s_in*, i32) #1

declare dso_local i32 @img_i2s_in_writel(%struct.img_i2s_in*, i32, i32) #1

declare dso_local i32 @img_i2s_in_ch_disable(%struct.img_i2s_in*, i32) #1

declare dso_local i32 @img_i2s_in_ch_readl(%struct.img_i2s_in*, i32, i32) #1

declare dso_local i32 @img_i2s_in_ch_writel(%struct.img_i2s_in*, i32, i32, i32) #1

declare dso_local i32 @img_i2s_in_flush(%struct.img_i2s_in*) #1

declare dso_local i32 @img_i2s_in_ch_enable(%struct.img_i2s_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
