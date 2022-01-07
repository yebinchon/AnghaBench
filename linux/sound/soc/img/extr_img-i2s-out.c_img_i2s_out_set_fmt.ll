; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.img_i2s_out = type { i32, i32, i32, i32 }

@SND_SOC_DAIFMT_CLOCK_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CONT = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_CLK_EN_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_BCLK_POL_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_FRM_CLK_POL_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CHAN_CTL_CLKT_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CH_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @img_i2s_out_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_out_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.img_i2s_out*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = call %struct.img_i2s_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.img_i2s_out* %16, %struct.img_i2s_out** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SND_SOC_DAIFMT_CLOCK_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @SND_SOC_DAIFMT_CONT, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @IMG_I2S_OUT_CTL_CLK_EN_MASK, align 4
  %27 = load i32, i32* %14, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %38 [
    i32 135, label %33
    i32 134, label %34
  ]

33:                                               ; preds = %29
  br label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @IMG_I2S_OUT_CTL_MASTER_MASK, align 4
  %36 = load i32, i32* %14, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %14, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %172

41:                                               ; preds = %34, %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %61 [
    i32 128, label %45
    i32 129, label %49
    i32 131, label %56
    i32 132, label %57
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @IMG_I2S_OUT_CTL_BCLK_POL_MASK, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %64

49:                                               ; preds = %41
  %50 = load i32, i32* @IMG_I2S_OUT_CTL_BCLK_POL_MASK, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @IMG_I2S_OUT_CTL_FRM_CLK_POL_MASK, align 4
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  br label %64

56:                                               ; preds = %41
  br label %64

57:                                               ; preds = %41
  %58 = load i32, i32* @IMG_I2S_OUT_CTL_FRM_CLK_POL_MASK, align 4
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %64

61:                                               ; preds = %41
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %172

64:                                               ; preds = %57, %56, %49, %45
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %73 [
    i32 133, label %68
    i32 130, label %72
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* @IMG_I2S_OUT_CHAN_CTL_CLKT_MASK, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %76

72:                                               ; preds = %64
  br label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %172

76:                                               ; preds = %72, %68
  %77 = load i32, i32* @IMG_I2S_OUT_CTL_CLK_EN_MASK, align 4
  %78 = load i32, i32* @IMG_I2S_OUT_CTL_MASTER_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IMG_I2S_OUT_CTL_BCLK_POL_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IMG_I2S_OUT_CTL_FRM_CLK_POL_MASK, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @IMG_I2S_OUT_CHAN_CTL_CLKT_MASK, align 4
  store i32 %84, i32* %10, align 4
  %85 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %86 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pm_runtime_get_sync(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %172

93:                                               ; preds = %76
  %94 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %95 = call i32 @img_i2s_out_disable(%struct.img_i2s_out* %94)
  %96 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %97 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %98 = call i32 @img_i2s_out_readl(%struct.img_i2s_out* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %108 = call i32 @img_i2s_out_writel(%struct.img_i2s_out* %105, i32 %106, i32 %107)
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %119, %93
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %112 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @img_i2s_out_ch_disable(%struct.img_i2s_out* %116, i32 %117)
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %109

122:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %145, %122
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %126 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %123
  %130 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @IMG_I2S_OUT_CH_CTL, align 4
  %133 = call i32 @img_i2s_out_ch_readl(%struct.img_i2s_out* %130, i32 %131, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %10, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %13, align 4
  %140 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @IMG_I2S_OUT_CH_CTL, align 4
  %144 = call i32 @img_i2s_out_ch_writel(%struct.img_i2s_out* %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %123

148:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %159, %148
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %152 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @img_i2s_out_ch_enable(%struct.img_i2s_out* %156, i32 %157)
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %149

162:                                              ; preds = %149
  %163 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %164 = call i32 @img_i2s_out_enable(%struct.img_i2s_out* %163)
  %165 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %166 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @pm_runtime_put(i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.img_i2s_out*, %struct.img_i2s_out** %6, align 8
  %171 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %162, %91, %73, %61, %38
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.img_i2s_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @img_i2s_out_disable(%struct.img_i2s_out*) #1

declare dso_local i32 @img_i2s_out_readl(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_writel(%struct.img_i2s_out*, i32, i32) #1

declare dso_local i32 @img_i2s_out_ch_disable(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_ch_readl(%struct.img_i2s_out*, i32, i32) #1

declare dso_local i32 @img_i2s_out_ch_writel(%struct.img_i2s_out*, i32, i32, i32) #1

declare dso_local i32 @img_i2s_out_ch_enable(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_enable(%struct.img_i2s_out*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
