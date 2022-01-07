; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wl1273.c_snd_wl1273_fm_set_i2s_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wl1273.c_snd_wl1273_fm_set_i2s_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_core = type { i32, {}*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"width: %d\0A\00", align 1
@WL1273_IS2_WIDTH = common dso_local global i32 0, align 4
@WL1273_IS2_RATE = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_48K = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_44_1K = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_32K = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_22_05K = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_16K = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_12K = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_11_025 = common dso_local global i32 0, align 4
@WL1273_IS2_RATE_8K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Sampling rate: %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_32 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_40 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_48 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_50 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_60 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_64 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_80 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_96 = common dso_local global i32 0, align 4
@WL1273_IS2_WIDTH_128 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Data width: %d not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"WL1273_I2S_DEF_MODE: 0x%04x\0A\00", align 1
@WL1273_I2S_DEF_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"core->i2s_mode: 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"mode: 0x%04x\0A\00", align 1
@WL1273_I2S_MODE_CONFIG_SET = common dso_local global i32 0, align 4
@WL1273_AUDIO_ENABLE = common dso_local global i32 0, align 4
@WL1273_AUDIO_ENABLE_I2S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_core*, i32, i32)* @snd_wl1273_fm_set_i2s_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wl1273_fm_set_i2s_mode(%struct.wl1273_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wl1273_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1273_core* %0, %struct.wl1273_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %11 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %21 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %24 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WL1273_IS2_WIDTH, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @WL1273_IS2_RATE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %65 [
    i32 48000, label %33
    i32 44100, label %37
    i32 32000, label %41
    i32 22050, label %45
    i32 16000, label %49
    i32 12000, label %53
    i32 11025, label %57
    i32 8000, label %61
  ]

33:                                               ; preds = %3
  %34 = load i32, i32* @WL1273_IS2_RATE_48K, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %71

37:                                               ; preds = %3
  %38 = load i32, i32* @WL1273_IS2_RATE_44_1K, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %71

41:                                               ; preds = %3
  %42 = load i32, i32* @WL1273_IS2_RATE_32K, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %71

45:                                               ; preds = %3
  %46 = load i32, i32* @WL1273_IS2_RATE_22_05K, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %71

49:                                               ; preds = %3
  %50 = load i32, i32* @WL1273_IS2_RATE_16K, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %71

53:                                               ; preds = %3
  %54 = load i32, i32* @WL1273_IS2_RATE_12K, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %71

57:                                               ; preds = %3
  %58 = load i32, i32* @WL1273_IS2_RATE_11_025, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %71

61:                                               ; preds = %3
  %62 = load i32, i32* @WL1273_IS2_RATE_8K, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %71

65:                                               ; preds = %3
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %161

71:                                               ; preds = %61, %57, %53, %49, %45, %41, %37, %33
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %109 [
    i32 16, label %73
    i32 20, label %77
    i32 24, label %81
    i32 25, label %85
    i32 30, label %89
    i32 32, label %93
    i32 40, label %97
    i32 48, label %101
    i32 64, label %105
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* @WL1273_IS2_WIDTH_32, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %115

77:                                               ; preds = %71
  %78 = load i32, i32* @WL1273_IS2_WIDTH_40, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %115

81:                                               ; preds = %71
  %82 = load i32, i32* @WL1273_IS2_WIDTH_48, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %115

85:                                               ; preds = %71
  %86 = load i32, i32* @WL1273_IS2_WIDTH_50, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %115

89:                                               ; preds = %71
  %90 = load i32, i32* @WL1273_IS2_WIDTH_60, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %115

93:                                               ; preds = %71
  %94 = load i32, i32* @WL1273_IS2_WIDTH_64, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %115

97:                                               ; preds = %71
  %98 = load i32, i32* @WL1273_IS2_WIDTH_80, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %115

101:                                              ; preds = %71
  %102 = load i32, i32* @WL1273_IS2_WIDTH_96, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %115

105:                                              ; preds = %71
  %106 = load i32, i32* @WL1273_IS2_WIDTH_128, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %115

109:                                              ; preds = %71
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %161

115:                                              ; preds = %105, %101, %97, %93, %89, %85, %81, %77, %73
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load i32, i32* @WL1273_I2S_DEF_MODE, align 4
  %118 = call i32 @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.device*, %struct.device** %7, align 8
  %120 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %121 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @dev_dbg(%struct.device* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %128 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %115
  %133 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %134 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %133, i32 0, i32 1
  %135 = bitcast {}** %134 to i32 (%struct.wl1273_core*, i32, i32)**
  %136 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %135, align 8
  %137 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %138 = load i32, i32* @WL1273_I2S_MODE_CONFIG_SET, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 %136(%struct.wl1273_core* %137, i32 %138, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %161

144:                                              ; preds = %132
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %147 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %149 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %148, i32 0, i32 1
  %150 = bitcast {}** %149 to i32 (%struct.wl1273_core*, i32, i32)**
  %151 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %150, align 8
  %152 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %153 = load i32, i32* @WL1273_AUDIO_ENABLE, align 4
  %154 = load i32, i32* @WL1273_AUDIO_ENABLE_I2S, align 4
  %155 = call i32 %151(%struct.wl1273_core* %152, i32 %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  br label %161

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %115
  br label %161

161:                                              ; preds = %160, %158, %143, %109, %65
  %162 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %163 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %162, i32 0, i32 2
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
