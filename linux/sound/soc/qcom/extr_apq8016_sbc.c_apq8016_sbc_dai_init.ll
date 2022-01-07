; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8016_sbc.c_apq8016_sbc_dai_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8016_sbc.c_apq8016_sbc_dai_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai**, %struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.snd_soc_dai* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai_link = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.apq8016_sbc_data = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.snd_jack* }
%struct.snd_jack = type { i32 }

@SPKR_CTL_PRI_WS_SLAVE_SEL_11 = common dso_local global i32 0, align 4
@MIC_CTRL_QUA_WS_SLAVE_SEL_10 = common dso_local global i32 0, align 4
@MIC_CTRL_TLMM_SCLK_EN = common dso_local global i32 0, align 4
@MIC_CTRL_TER_WS_SLAVE_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported cpu dai configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_BTN_4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to add Headphone Jack\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@DEFAULT_MCLK_RATE = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to set mclk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to set jack: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @apq8016_sbc_dai_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apq8016_sbc_dai_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.apq8016_sbc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_jack*, align 8
  %12 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 3
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %14, align 8
  store %struct.snd_soc_dai* %15, %struct.snd_soc_dai** %4, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 2
  %18 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %17, align 8
  store %struct.snd_soc_dai_link* %18, %struct.snd_soc_dai_link** %6, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %20, align 8
  store %struct.snd_soc_card* %21, %struct.snd_soc_card** %7, align 8
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %23 = call %struct.apq8016_sbc_data* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %22)
  store %struct.apq8016_sbc_data* %23, %struct.apq8016_sbc_data** %8, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %64 [
    i32 130, label %27
    i32 129, label %38
    i32 128, label %51
  ]

27:                                               ; preds = %1
  %28 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %29 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @readl(i32 %30)
  %32 = load i32, i32* @SPKR_CTL_PRI_WS_SLAVE_SEL_11, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %35 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel(i32 %33, i32 %36)
  br label %71

38:                                               ; preds = %1
  %39 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %40 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @readl(i32 %41)
  %43 = load i32, i32* @MIC_CTRL_QUA_WS_SLAVE_SEL_10, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MIC_CTRL_TLMM_SCLK_EN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %48 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @writel(i32 %46, i32 %49)
  br label %71

51:                                               ; preds = %1
  %52 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %53 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @readl(i32 %54)
  %56 = load i32, i32* @MIC_CTRL_TER_WS_SLAVE_SEL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MIC_CTRL_TLMM_SCLK_EN, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %61 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @writel(i32 %59, i32 %62)
  br label %71

64:                                               ; preds = %1
  %65 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %66 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %185

71:                                               ; preds = %51, %38, %27
  %72 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %73 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %125, label %76

76:                                               ; preds = %71
  %77 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %78 = load i32, i32* @SND_JACK_HEADSET, align 4
  %79 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SND_JACK_BTN_0, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SND_JACK_BTN_1, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SND_JACK_BTN_2, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SND_JACK_BTN_3, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SND_JACK_BTN_4, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %92 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %91, i32 0, i32 1
  %93 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %90, %struct.TYPE_3__* %92, i32* null, i32 0)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %76
  %97 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %185

102:                                              ; preds = %76
  %103 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %104 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load %struct.snd_jack*, %struct.snd_jack** %105, align 8
  store %struct.snd_jack* %106, %struct.snd_jack** %11, align 8
  %107 = load %struct.snd_jack*, %struct.snd_jack** %11, align 8
  %108 = load i32, i32* @SND_JACK_BTN_0, align 4
  %109 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %110 = call i32 @snd_jack_set_key(%struct.snd_jack* %107, i32 %108, i32 %109)
  %111 = load %struct.snd_jack*, %struct.snd_jack** %11, align 8
  %112 = load i32, i32* @SND_JACK_BTN_1, align 4
  %113 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %114 = call i32 @snd_jack_set_key(%struct.snd_jack* %111, i32 %112, i32 %113)
  %115 = load %struct.snd_jack*, %struct.snd_jack** %11, align 8
  %116 = load i32, i32* @SND_JACK_BTN_2, align 4
  %117 = load i32, i32* @KEY_VOLUMEUP, align 4
  %118 = call i32 @snd_jack_set_key(%struct.snd_jack* %115, i32 %116, i32 %117)
  %119 = load %struct.snd_jack*, %struct.snd_jack** %11, align 8
  %120 = load i32, i32* @SND_JACK_BTN_3, align 4
  %121 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %122 = call i32 @snd_jack_set_key(%struct.snd_jack* %119, i32 %120, i32 %121)
  %123 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %124 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %102, %71
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %181, %125
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %129 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %184

132:                                              ; preds = %126
  %133 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %134 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %133, i32 0, i32 0
  %135 = load %struct.snd_soc_dai**, %struct.snd_soc_dai*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.snd_soc_dai*, %struct.snd_soc_dai** %135, i64 %137
  %139 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %138, align 8
  store %struct.snd_soc_dai* %139, %struct.snd_soc_dai** %12, align 8
  %140 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %12, align 8
  %141 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %140, i32 0, i32 1
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %141, align 8
  store %struct.snd_soc_component* %142, %struct.snd_soc_component** %5, align 8
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %144 = load i32, i32* @DEFAULT_MCLK_RATE, align 4
  %145 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %146 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %143, i32 0, i32 0, i32 %144, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %132
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @ENOTSUPP, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %156 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @dev_warn(i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %2, align 4
  br label %185

161:                                              ; preds = %149, %132
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %163 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %8, align 8
  %164 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %163, i32 0, i32 1
  %165 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %162, %struct.TYPE_3__* %164, i32* null)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %161
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @ENOTSUPP, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %175 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @dev_warn(i32 %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %2, align 4
  br label %185

180:                                              ; preds = %168, %161
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %126

184:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %173, %154, %96, %64
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.apq8016_sbc_data* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(%struct.snd_jack*, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
