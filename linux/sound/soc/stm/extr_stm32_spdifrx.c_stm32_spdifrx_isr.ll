; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spdifrx_data = type { i32, %struct.platform_device*, %struct.snd_pcm_substream* }
%struct.platform_device = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@STM32_SPDIFRX_SR = common dso_local global i32 0, align 4
@STM32_SPDIFRX_IMR = common dso_local global i32 0, align 4
@SPDIFRX_XIMR_MASK = common dso_local global i32 0, align 4
@SPDIFRX_IMR_IFEIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected IRQ. rflags=%#x, imr=%#x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@STM32_SPDIFRX_IFCR = common dso_local global i32 0, align 4
@SPDIFRX_XIFCR_MASK = common dso_local global i32 0, align 4
@SPDIFRX_SR_PERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Parity error\0A\00", align 1
@SPDIFRX_SR_OVR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Overrun error\0A\00", align 1
@SPDIFRX_SR_SBD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Synchronization block detected\0A\00", align 1
@SPDIFRX_SR_SYNCD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Synchronization done\0A\00", align 1
@SPDIFRX_SPDIFEN_ENABLE = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@SPDIFRX_CR_SPDIFEN_MASK = common dso_local global i32 0, align 4
@SPDIFRX_SR_FERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Frame error\0A\00", align 1
@SPDIFRX_SR_SERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Synchronization error\0A\00", align 1
@SPDIFRX_SR_TERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Timeout error\0A\00", align 1
@SPDIFRX_SPDIFEN_DISABLE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_spdifrx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_spdifrx_data*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.stm32_spdifrx_data*
  store %struct.stm32_spdifrx_data* %17, %struct.stm32_spdifrx_data** %6, align 8
  %18 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %18, i32 0, i32 2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %7, align 8
  %21 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %22 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %21, i32 0, i32 1
  %23 = load %struct.platform_device*, %struct.platform_device** %22, align 8
  store %struct.platform_device* %23, %struct.platform_device** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %25 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STM32_SPDIFRX_SR, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %11)
  %29 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @STM32_SPDIFRX_IMR, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %12)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @SPDIFRX_XIMR_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SPDIFRX_IMR_IFEIE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load i32, i32* @SPDIFRX_IMR_IFEIE, align 4
  %43 = shl i32 %42, 1
  %44 = load i32, i32* @SPDIFRX_IMR_IFEIE, align 4
  %45 = shl i32 %44, 2
  %46 = or i32 %43, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %41, %2
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @IRQ_NONE, align 4
  store i32 %61, i32* %3, align 4
  br label %173

62:                                               ; preds = %49
  %63 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %64 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @STM32_SPDIFRX_IFCR, align 4
  %67 = load i32, i32* @SPDIFRX_XIFCR_MASK, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @SPDIFRX_SR_PERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %78

78:                                               ; preds = %74, %62
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @SPDIFRX_SR_OVR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @SPDIFRX_SR_SBD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @SPDIFRX_SR_SYNCD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @SPDIFRX_SPDIFEN_ENABLE, align 4
  %106 = call i32 @SPDIFRX_CR_SPDIFENSET(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %108 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %111 = load i32, i32* @SPDIFRX_CR_SPDIFEN_MASK, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @regmap_update_bits(i32 %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %101, %96
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @SPDIFRX_SR_FERR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_dbg(i32* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @SPDIFRX_SR_SERR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_dbg(i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @SPDIFRX_SR_TERR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_dbg(i32* %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i32, i32* @SPDIFRX_SPDIFEN_DISABLE, align 4
  %146 = call i32 @SPDIFRX_CR_SPDIFENSET(i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %6, align 8
  %148 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %151 = load i32, i32* @SPDIFRX_CR_SPDIFEN_MASK, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @regmap_update_bits(i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %155 = icmp ne %struct.snd_pcm_substream* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %144
  %157 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %158 = load i32, i32* @SNDRV_PCM_STATE_DISCONNECTED, align 4
  %159 = call i32 @snd_pcm_stop(%struct.snd_pcm_substream* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %144
  %161 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %161, i32* %3, align 4
  br label %173

162:                                              ; preds = %141
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %167 = icmp ne %struct.snd_pcm_substream* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %170 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %169)
  br label %171

171:                                              ; preds = %168, %165, %162
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %160, %55
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @SPDIFRX_CR_SPDIFENSET(i32) #1

declare dso_local i32 @snd_pcm_stop(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
