; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_dai_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_dai_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i32 }

@DA7218_DAI_CLK_MODE = common dso_local global i32 0, align 4
@DA7218_DAI_CLK_EN_MASK = common dso_local global i32 0, align 4
@DA7218_PLL_REFOSC_CAL = common dso_local global i32 0, align 4
@DA7218_PLL_REFOSC_CAL_START_MASK = common dso_local global i32 0, align 4
@DA7218_PLL_REFOSC_CAL_EN_MASK = common dso_local global i32 0, align 4
@DA7218_REF_OSC_CHECK_DELAY_MIN = common dso_local global i32 0, align 4
@DA7218_REF_OSC_CHECK_DELAY_MAX = common dso_local global i32 0, align 4
@DA7218_REF_OSC_CHECK_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Reference oscillator failed calibration\0A\00", align 1
@DA7218_PC_COUNT = common dso_local global i32 0, align 4
@DA7218_PC_RESYNC_AUTO_MASK = common dso_local global i32 0, align 4
@DA7218_PLL_CTRL = common dso_local global i32 0, align 4
@DA7218_PLL_MODE_MASK = common dso_local global i32 0, align 4
@DA7218_PLL_MODE_SRM = common dso_local global i32 0, align 4
@DA7218_PLL_STATUS = common dso_local global i32 0, align 4
@DA7218_PLL_SRM_STATUS_SRM_LOCK = common dso_local global i32 0, align 4
@DA7218_SRM_CHECK_DELAY = common dso_local global i32 0, align 4
@DA7218_SRM_CHECK_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SRM failed to lock\0A\00", align 1
@DA7218_PC_FREERUN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @da7218_dai_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_dai_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da7218_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.da7218_priv* %20, %struct.da7218_priv** %9, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %142 [
    i32 128, label %22
    i32 129, label %127
  ]

22:                                               ; preds = %3
  %23 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %24 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %29 = load i32, i32* @DA7218_DAI_CLK_MODE, align 4
  %30 = load i32, i32* @DA7218_DAI_CLK_EN_MASK, align 4
  %31 = load i32, i32* @DA7218_DAI_CLK_EN_MASK, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = load i32, i32* @DA7218_PLL_REFOSC_CAL, align 4
  %36 = load i32, i32* @DA7218_PLL_REFOSC_CAL_START_MASK, align 4
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %36)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* @DA7218_PLL_REFOSC_CAL, align 4
  %40 = load i32, i32* @DA7218_PLL_REFOSC_CAL_START_MASK, align 4
  %41 = load i32, i32* @DA7218_PLL_REFOSC_CAL_EN_MASK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %42)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %68, %33
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = load i32, i32* @DA7218_PLL_REFOSC_CAL, align 4
  %47 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @DA7218_PLL_REFOSC_CAL_START_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 1, i32* %14, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @DA7218_REF_OSC_CHECK_DELAY_MIN, align 4
  %57 = load i32, i32* @DA7218_REF_OSC_CHECK_DELAY_MAX, align 4
  %58 = call i32 @usleep_range(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %52
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @DA7218_REF_OSC_CHECK_TRIES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %44, label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = load i32, i32* @DA7218_PC_COUNT, align 4
  %81 = load i32, i32* @DA7218_PC_RESYNC_AUTO_MASK, align 4
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = load i32, i32* @DA7218_PLL_CTRL, align 4
  %85 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @DA7218_PLL_MODE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @DA7218_PLL_MODE_SRM, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %145

92:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %116, %92
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load i32, i32* @DA7218_PLL_STATUS, align 4
  %96 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @DA7218_PLL_SRM_STATUS_SRM_LOCK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %14, align 4
  br label %107

102:                                              ; preds = %93
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* @DA7218_SRM_CHECK_DELAY, align 4
  %106 = call i32 @msleep(i32 %105)
  br label %107

107:                                              ; preds = %102, %101
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @DA7218_SRM_CHECK_TRIES, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ false, %108 ], [ %115, %112 ]
  br i1 %117, label %93, label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_warn(i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %118
  store i32 0, i32* %4, align 4
  br label %145

127:                                              ; preds = %3
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %129 = load i32, i32* @DA7218_PC_COUNT, align 4
  %130 = load i32, i32* @DA7218_PC_FREERUN_MASK, align 4
  %131 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %128, i32 %129, i32 %130)
  %132 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %133 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %138 = load i32, i32* @DA7218_DAI_CLK_MODE, align 4
  %139 = load i32, i32* @DA7218_DAI_CLK_EN_MASK, align 4
  %140 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %137, i32 %138, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %136, %127
  store i32 0, i32* %4, align 4
  br label %145

142:                                              ; preds = %3
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %142, %141, %126, %91
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
