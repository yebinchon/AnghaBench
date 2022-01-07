; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_i2s_out = type { i32, i32, i32 }

@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_CLK_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_ACTIVE_CHAN_SHIFT = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_ACTIVE_CHAN_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @img_i2s_out_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_out_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.img_i2s_out*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = call %struct.img_i2s_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %22)
  store %struct.img_i2s_out* %23, %struct.img_i2s_out** %8, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i64 @params_rate(%struct.snd_pcm_hw_params* %24)
  store i64 %25, i64* %15, align 8
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i64 @params_format(%struct.snd_pcm_hw_params* %26)
  store i64 %27, i64* %21, align 8
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_channels(%struct.snd_pcm_hw_params* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = udiv i32 %30, 2
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* %21, align 8
  %33 = load i64, i64* @SNDRV_PCM_FORMAT_S32_LE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %185

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %44 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 2
  %47 = icmp ugt i32 %42, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = urem i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %41, %38
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %185

55:                                               ; preds = %48
  %56 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %57 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %15, align 8
  %60 = mul nsw i64 %59, 256
  %61 = call i64 @clk_round_rate(i32 %58, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %185

67:                                               ; preds = %55
  %68 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %69 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %15, align 8
  %72 = mul nsw i64 %71, 384
  %73 = call i64 @clk_round_rate(i32 %70, i64 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i64, i64* %12, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %185

79:                                               ; preds = %67
  %80 = load i64, i64* %11, align 8
  %81 = sdiv i64 %80, 256
  %82 = load i64, i64* %15, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i64 @abs(i64 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sdiv i64 %85, 384
  %87 = load i64, i64* %15, align 8
  %88 = sub nsw i64 %86, %87
  %89 = call i64 @abs(i64 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %95 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @clk_set_rate(i32 %96, i64 %97)
  br label %105

99:                                               ; preds = %79
  %100 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %101 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @clk_set_rate(i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %107 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @clk_get_rate(i32 %108)
  store i64 %109, i64* %16, align 8
  %110 = load i64, i64* %16, align 8
  %111 = sdiv i64 %110, 256
  %112 = load i64, i64* %15, align 8
  %113 = sub nsw i64 %111, %112
  %114 = call i64 @abs(i64 %113)
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %16, align 8
  %116 = sdiv i64 %115, 384
  %117 = load i64, i64* %15, align 8
  %118 = sub nsw i64 %116, %117
  %119 = call i64 @abs(i64 %118)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %105
  %124 = load i32, i32* @IMG_I2S_OUT_CTL_CLK_MASK, align 4
  %125 = load i32, i32* %20, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %20, align 4
  br label %127

127:                                              ; preds = %123, %105
  %128 = load i32, i32* %10, align 4
  %129 = sub i32 %128, 1
  %130 = load i32, i32* @IMG_I2S_OUT_CTL_ACTIVE_CHAN_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* @IMG_I2S_OUT_CTL_ACTIVE_CHAN_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* %20, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* @IMG_I2S_OUT_CTL_CLK_MASK, align 4
  %137 = load i32, i32* @IMG_I2S_OUT_CTL_ACTIVE_CHAN_MASK, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %19, align 4
  %139 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %140 = call i32 @img_i2s_out_disable(%struct.img_i2s_out* %139)
  %141 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %142 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %143 = call i32 @img_i2s_out_readl(%struct.img_i2s_out* %141, i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %19, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = load i32, i32* %20, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %18, align 4
  %150 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %153 = call i32 @img_i2s_out_writel(%struct.img_i2s_out* %150, i32 %151, i32 %152)
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %162, %127
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @img_i2s_out_ch_enable(%struct.img_i2s_out* %159, i32 %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %154

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %176, %165
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %169 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @img_i2s_out_ch_disable(%struct.img_i2s_out* %173, i32 %174)
  br label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %17, align 4
  br label %166

179:                                              ; preds = %166
  %180 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %181 = call i32 @img_i2s_out_enable(%struct.img_i2s_out* %180)
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %184 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %76, %64, %52, %35
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.img_i2s_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @img_i2s_out_disable(%struct.img_i2s_out*) #1

declare dso_local i32 @img_i2s_out_readl(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_writel(%struct.img_i2s_out*, i32, i32) #1

declare dso_local i32 @img_i2s_out_ch_enable(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_ch_disable(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_enable(%struct.img_i2s_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
