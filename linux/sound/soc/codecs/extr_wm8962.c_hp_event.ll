; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8962_DCS_STARTUP_DONE_HP1L = common dso_local global i32 0, align 4
@WM8962_DCS_STARTUP_DONE_HP1R = common dso_local global i32 0, align 4
@WM8962_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8962_HP1L_ENA = common dso_local global i32 0, align 4
@WM8962_HP1R_ENA = common dso_local global i32 0, align 4
@WM8962_HP1L_ENA_DLY = common dso_local global i32 0, align 4
@WM8962_HP1R_ENA_DLY = common dso_local global i32 0, align 4
@WM8962_DC_SERVO_1 = common dso_local global i32 0, align 4
@WM8962_HP1L_DCS_ENA = common dso_local global i32 0, align 4
@WM8962_HP1R_DCS_ENA = common dso_local global i32 0, align 4
@WM8962_HP1L_DCS_STARTUP = common dso_local global i32 0, align 4
@WM8962_HP1R_DCS_STARTUP = common dso_local global i32 0, align 4
@WM8962_DC_SERVO_6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read DCS status: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DCS status: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"DC servo timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"DC servo complete after %dms\0A\00", align 1
@WM8962_HP1L_ENA_OUTP = common dso_local global i32 0, align 4
@WM8962_HP1R_ENA_OUTP = common dso_local global i32 0, align 4
@WM8962_HP1L_RMV_SHORT = common dso_local global i32 0, align 4
@WM8962_HP1R_RMV_SHORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid event %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load i32, i32* @WM8962_DCS_STARTUP_DONE_HP1L, align 4
  %17 = load i32, i32* @WM8962_DCS_STARTUP_DONE_HP1R, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %157 [
    i32 129, label %20
    i32 128, label %125
  ]

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = load i32, i32* @WM8962_ANALOGUE_HP_0, align 4
  %23 = load i32, i32* @WM8962_HP1L_ENA, align 4
  %24 = load i32, i32* @WM8962_HP1R_ENA, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WM8962_HP1L_ENA, align 4
  %27 = load i32, i32* @WM8962_HP1R_ENA, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %25, i32 %28)
  %30 = call i32 @udelay(i32 20)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %32 = load i32, i32* @WM8962_ANALOGUE_HP_0, align 4
  %33 = load i32, i32* @WM8962_HP1L_ENA_DLY, align 4
  %34 = load i32, i32* @WM8962_HP1R_ENA_DLY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WM8962_HP1L_ENA_DLY, align 4
  %37 = load i32, i32* @WM8962_HP1R_ENA_DLY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = load i32, i32* @WM8962_DC_SERVO_1, align 4
  %42 = load i32, i32* @WM8962_HP1L_DCS_ENA, align 4
  %43 = load i32, i32* @WM8962_HP1R_DCS_ENA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WM8962_HP1L_DCS_STARTUP, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WM8962_HP1R_DCS_STARTUP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WM8962_HP1L_DCS_ENA, align 4
  %50 = load i32, i32* @WM8962_HP1R_DCS_ENA, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @WM8962_HP1L_DCS_STARTUP, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WM8962_HP1R_DCS_STARTUP, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %48, i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %86, %20
  %58 = call i32 @msleep(i32 1)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %60 = load i32, i32* @WM8962_DC_SERVO_6, align 4
  %61 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %76

70:                                               ; preds = %57
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = icmp slt i32 %78, 200
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %83, %84
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i1 [ false, %76 ], [ %85, %80 ]
  br i1 %87, label %57, label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %96 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %105

99:                                               ; preds = %88
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %107 = load i32, i32* @WM8962_ANALOGUE_HP_0, align 4
  %108 = load i32, i32* @WM8962_HP1L_ENA_OUTP, align 4
  %109 = load i32, i32* @WM8962_HP1R_ENA_OUTP, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @WM8962_HP1L_ENA_OUTP, align 4
  %112 = load i32, i32* @WM8962_HP1R_ENA_OUTP, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %110, i32 %113)
  %115 = call i32 @udelay(i32 20)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %117 = load i32, i32* @WM8962_ANALOGUE_HP_0, align 4
  %118 = load i32, i32* @WM8962_HP1L_RMV_SHORT, align 4
  %119 = load i32, i32* @WM8962_HP1R_RMV_SHORT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @WM8962_HP1L_RMV_SHORT, align 4
  %122 = load i32, i32* @WM8962_HP1R_RMV_SHORT, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %120, i32 %123)
  br label %162

125:                                              ; preds = %3
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %127 = load i32, i32* @WM8962_ANALOGUE_HP_0, align 4
  %128 = load i32, i32* @WM8962_HP1L_RMV_SHORT, align 4
  %129 = load i32, i32* @WM8962_HP1R_RMV_SHORT, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %126, i32 %127, i32 %130, i32 0)
  %132 = call i32 @udelay(i32 20)
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %134 = load i32, i32* @WM8962_DC_SERVO_1, align 4
  %135 = load i32, i32* @WM8962_HP1L_DCS_ENA, align 4
  %136 = load i32, i32* @WM8962_HP1R_DCS_ENA, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @WM8962_HP1L_DCS_STARTUP, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @WM8962_HP1R_DCS_STARTUP, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %133, i32 %134, i32 %141, i32 0)
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %144 = load i32, i32* @WM8962_ANALOGUE_HP_0, align 4
  %145 = load i32, i32* @WM8962_HP1L_ENA, align 4
  %146 = load i32, i32* @WM8962_HP1R_ENA, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @WM8962_HP1L_ENA_DLY, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @WM8962_HP1R_ENA_DLY, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @WM8962_HP1L_ENA_OUTP, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @WM8962_HP1R_ENA_OUTP, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i32 %144, i32 %155, i32 0)
  br label %162

157:                                              ; preds = %3
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %163

162:                                              ; preds = %125, %105
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
