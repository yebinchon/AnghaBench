; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_spdif_priv = type { i32, i32, i32*, i32, %struct.regmap*, %struct.platform_device* }
%struct.regmap = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable core clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable spba clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to soft reset\0A\00", align 1
@REG_SPDIF_SIE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SCR_TXFIFO_AUTOSYNC = common dso_local global i32 0, align 4
@SCR_TXFIFO_CTRL_NORMAL = common dso_local global i32 0, align 4
@SCR_TXSEL_NORMAL = common dso_local global i32 0, align 4
@SCR_USRC_SEL_CHIP = common dso_local global i32 0, align 4
@SCR_TXFIFO_FSEL_IF8 = common dso_local global i32 0, align 4
@SCR_TXFIFO_AUTOSYNC_MASK = common dso_local global i32 0, align 4
@SCR_TXFIFO_CTRL_MASK = common dso_local global i32 0, align 4
@SCR_TXSEL_MASK = common dso_local global i32 0, align 4
@SCR_USRC_SEL_MASK = common dso_local global i32 0, align 4
@SCR_TXFIFO_FSEL_MASK = common dso_local global i32 0, align 4
@SPDIF_TXRATE_MAX = common dso_local global i32 0, align 4
@SCR_RXFIFO_FSEL_IF8 = common dso_local global i32 0, align 4
@SCR_RXFIFO_AUTOSYNC = common dso_local global i32 0, align 4
@SCR_RXFIFO_FSEL_MASK = common dso_local global i32 0, align 4
@SCR_RXFIFO_AUTOSYNC_MASK = common dso_local global i32 0, align 4
@SCR_RXFIFO_CTL_MASK = common dso_local global i32 0, align 4
@SCR_RXFIFO_OFF_MASK = common dso_local global i32 0, align 4
@REG_SPDIF_SCR = common dso_local global i32 0, align 4
@SCR_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @fsl_spdif_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spdif_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.fsl_spdif_priv*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32 %19)
  store %struct.fsl_spdif_priv* %20, %struct.fsl_spdif_priv** %7, align 8
  %21 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %22 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %21, i32 0, i32 5
  %23 = load %struct.platform_device*, %struct.platform_device** %22, align 8
  store %struct.platform_device* %23, %struct.platform_device** %8, align 8
  %24 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %25 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %24, i32 0, i32 4
  %26 = load %struct.regmap*, %struct.regmap** %25, align 8
  store %struct.regmap* %26, %struct.regmap** %9, align 8
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %74, label %31

31:                                               ; preds = %2
  %32 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %33 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %3, align 4
  br label %186

43:                                               ; preds = %31
  %44 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %45 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IS_ERR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %51 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_prepare_enable(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %180

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %63 = call i32 @spdif_softreset(%struct.fsl_spdif_priv* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %168

70:                                               ; preds = %61
  %71 = load %struct.regmap*, %struct.regmap** %9, align 8
  %72 = load i32, i32* @REG_SPDIF_SIE, align 4
  %73 = call i32 @regmap_update_bits(%struct.regmap* %71, i32 %72, i32 16777215, i32 0)
  br label %74

74:                                               ; preds = %70, %2
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %74
  %81 = load i32, i32* @SCR_TXFIFO_AUTOSYNC, align 4
  %82 = load i32, i32* @SCR_TXFIFO_CTRL_NORMAL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SCR_TXSEL_NORMAL, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SCR_USRC_SEL_CHIP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SCR_TXFIFO_FSEL_IF8, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @SCR_TXFIFO_AUTOSYNC_MASK, align 4
  %91 = load i32, i32* @SCR_TXFIFO_CTRL_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SCR_TXSEL_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SCR_USRC_SEL_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SCR_TXFIFO_FSEL_MASK, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %116, %80
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @SPDIF_TXRATE_MAX, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %105 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_prepare_enable(i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %149

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %99

119:                                              ; preds = %99
  br label %139

120:                                              ; preds = %74
  %121 = load i32, i32* @SCR_RXFIFO_FSEL_IF8, align 4
  %122 = load i32, i32* @SCR_RXFIFO_AUTOSYNC, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* @SCR_RXFIFO_FSEL_MASK, align 4
  %125 = load i32, i32* @SCR_RXFIFO_AUTOSYNC_MASK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SCR_RXFIFO_CTL_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SCR_RXFIFO_OFF_MASK, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %11, align 4
  %131 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %132 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @clk_prepare_enable(i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %120
  br label %168

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %119
  %140 = load %struct.regmap*, %struct.regmap** %9, align 8
  %141 = load i32, i32* @REG_SPDIF_SCR, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @regmap_update_bits(%struct.regmap* %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.regmap*, %struct.regmap** %9, align 8
  %146 = load i32, i32* @REG_SPDIF_SCR, align 4
  %147 = load i32, i32* @SCR_LOW_POWER, align 4
  %148 = call i32 @regmap_update_bits(%struct.regmap* %145, i32 %146, i32 %147, i32 0)
  store i32 0, i32* %3, align 4
  br label %186

149:                                              ; preds = %114
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %164, %149
  %153 = load i32, i32* %12, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %157 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @clk_disable_unprepare(i32 %162)
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %12, align 4
  br label %152

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %137, %66
  %169 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %170 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @IS_ERR(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %176 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @clk_disable_unprepare(i32 %177)
  br label %179

179:                                              ; preds = %174, %168
  br label %180

180:                                              ; preds = %179, %56
  %181 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %182 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @clk_disable_unprepare(i32 %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %180, %139, %38
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @spdif_softreset(%struct.fsl_spdif_priv*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
