; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_sub_data = type { i32, i64, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@SNDRV_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@STM_SAI_IMR_REGX = common dso_local global i32 0, align 4
@STM_SAI_SR_REGX = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@STM_SAI_CLRFR_REGX = common dso_local global i32 0, align 4
@SAI_XCLRFR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Device stopped. Spurious IRQ 0x%x\0A\00", align 1
@SAI_XIMR_OVRUDRIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"IRQ %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@SNDRV_PCM_STATE_XRUN = common dso_local global i64 0, align 8
@SAI_XIMR_MUTEDETIE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"IRQ mute detected\0A\00", align 1
@SAI_XIMR_WCKCFGIE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"IRQ wrong clock configuration\0A\00", align 1
@SNDRV_PCM_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@SAI_XIMR_CNRDYIE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"IRQ Codec not ready\0A\00", align 1
@SAI_XIMR_AFSDETIE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"IRQ Anticipated frame synchro\0A\00", align 1
@SAI_XIMR_LFSDETIE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"IRQ Late frame synchro\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_sai_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_sai_sub_data*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.stm32_sai_sub_data*
  store %struct.stm32_sai_sub_data* %13, %struct.stm32_sai_sub_data** %6, align 8
  %14 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %14, i32 0, i32 3
  %16 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  store %struct.platform_device* %16, %struct.platform_device** %7, align 8
  %17 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @STM_SAI_IMR_REGX, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %9)
  %23 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STM_SAI_SR_REGX, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %8)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %138

35:                                               ; preds = %2
  %36 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @STM_SAI_CLRFR_REGX, align 4
  %40 = load i32, i32* @SAI_XCLRFR_MASK, align 4
  %41 = load i32, i32* @SAI_XCLRFR_MASK, align 4
  %42 = call i32 @regmap_write_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %44 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @IRQ_NONE, align 4
  store i32 %52, i32* %3, align 4
  br label %138

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @SAI_XIMR_OVRUDRIE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %62 = call i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data* %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i64, i64* @SNDRV_PCM_STATE_XRUN, align 8
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %58, %53
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @SAI_XIMR_MUTEDETIE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @SAI_XIMR_WCKCFGIE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i64, i64* @SNDRV_PCM_STATE_DISCONNECTED, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @SAI_XIMR_CNRDYIE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @SAI_XIMR_AFSDETIE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i64, i64* @SNDRV_PCM_STATE_XRUN, align 8
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @SAI_XIMR_LFSDETIE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i64, i64* @SNDRV_PCM_STATE_XRUN, align 8
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %118 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %117, i32 0, i32 0
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %125 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %130 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @snd_pcm_stop_xrun(i64 %131)
  br label %133

133:                                              ; preds = %128, %123, %116
  %134 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %135 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %47, %33
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_pcm_stop_xrun(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
