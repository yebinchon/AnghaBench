; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.img_i2s_in = type { i32, i32, i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_LRD_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_BLKP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_CLK_TRANS_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @img_i2s_in_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_in_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.img_i2s_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = call %struct.img_i2s_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.img_i2s_in* %15, %struct.img_i2s_in** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %35 [
    i32 128, label %19
    i32 129, label %23
    i32 131, label %24
    i32 132, label %31
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @IMG_I2S_IN_CH_CTL_LRD_MASK, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %38

23:                                               ; preds = %2
  br label %38

24:                                               ; preds = %2
  %25 = load i32, i32* @IMG_I2S_IN_CH_CTL_LRD_MASK, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @IMG_I2S_IN_CH_CTL_BLKP_MASK, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @IMG_I2S_IN_CH_CTL_BLKP_MASK, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %149

38:                                               ; preds = %31, %24, %23, %19
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %47 [
    i32 133, label %42
    i32 130, label %46
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @IMG_I2S_IN_CH_CTL_CLK_TRANS_MASK, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %50

46:                                               ; preds = %38
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %149

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %55 [
    i32 134, label %54
  ]

54:                                               ; preds = %50
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %149

58:                                               ; preds = %54
  %59 = load i32, i32* @IMG_I2S_IN_CH_CTL_CLK_TRANS_MASK, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %61 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pm_runtime_get_sync(i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %149

68:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %79, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %72 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @img_i2s_in_ch_disable(%struct.img_i2s_in* %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %69

82:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %127, %82
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %86 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %83
  %90 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %93 = call i32 @img_i2s_in_ch_readl(%struct.img_i2s_in* %90, i32 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %104 = call i32 @img_i2s_in_ch_writel(%struct.img_i2s_in* %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @IMG_I2S_IN_CH_CTL_BLKP_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %13, align 4
  %111 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %115 = call i32 @img_i2s_in_ch_writel(%struct.img_i2s_in* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @IMG_I2S_IN_CH_CTL_LRD_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %126 = call i32 @img_i2s_in_ch_writel(%struct.img_i2s_in* %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %89
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %83

130:                                              ; preds = %83
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %141, %130
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %134 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @img_i2s_in_ch_enable(%struct.img_i2s_in* %138, i32 %139)
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %131

144:                                              ; preds = %131
  %145 = load %struct.img_i2s_in*, %struct.img_i2s_in** %6, align 8
  %146 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pm_runtime_put(i32 %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %66, %55, %47, %35
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.img_i2s_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @img_i2s_in_ch_disable(%struct.img_i2s_in*, i32) #1

declare dso_local i32 @img_i2s_in_ch_readl(%struct.img_i2s_in*, i32, i32) #1

declare dso_local i32 @img_i2s_in_ch_writel(%struct.img_i2s_in*, i32, i32, i32) #1

declare dso_local i32 @img_i2s_in_ch_enable(%struct.img_i2s_in*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
