; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_enable_dc_servo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_enable_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32, i64, i64, i64 }
%struct.wm_hubs_dcs_cache = type { i32, i32, i32 }

@WM8994_DC_SERVO_4E = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Using cached DCS offset %x for %d,%d\0A\00", align 1
@WM8993_DCS_TRIG_DAC_WR_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_DAC_WR_1 = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_1 = common dso_local global i32 0, align 4
@WM8993_DCS_SERIES_NO_01_MASK = common dso_local global i32 0, align 4
@WM8993_DCS_SERIES_NO_01_SHIFT = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_SERIES_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_SERIES_1 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_STARTUP_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_STARTUP_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"DCS input: %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Applying %d/%d code DC servo correction\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"DCS right %d->%d\0A\00", align 1
@WM8993_DCS_DAC_WR_VAL_1_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"DCS left %d->%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DCS result: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @enable_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_dc_servo(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm_hubs_data*, align 8
  %4 = alloca %struct.wm_hubs_dcs_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm_hubs_data* %11, %struct.wm_hubs_data** %3, align 8
  %12 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %13 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %17 [
    i32 2, label %15
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @WM8994_DC_SERVO_4E, align 4
  store i32 %16, i32* %9, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @WM8993_DC_SERVO_3, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = call i64 @wm_hubs_dac_hp_direct(%struct.snd_soc_component* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %25 = call i64 @wm_hubs_dcs_cache_get(%struct.snd_soc_component* %24, %struct.wm_hubs_dcs_cache** %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wm_hubs_dcs_cache*, %struct.wm_hubs_dcs_cache** %4, align 8
  %32 = getelementptr inbounds %struct.wm_hubs_dcs_cache, %struct.wm_hubs_dcs_cache* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wm_hubs_dcs_cache*, %struct.wm_hubs_dcs_cache** %4, align 8
  %35 = getelementptr inbounds %struct.wm_hubs_dcs_cache, %struct.wm_hubs_dcs_cache* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wm_hubs_dcs_cache*, %struct.wm_hubs_dcs_cache** %4, align 8
  %38 = getelementptr inbounds %struct.wm_hubs_dcs_cache, %struct.wm_hubs_dcs_cache* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.wm_hubs_dcs_cache*, %struct.wm_hubs_dcs_cache** %4, align 8
  %44 = getelementptr inbounds %struct.wm_hubs_dcs_cache, %struct.wm_hubs_dcs_cache* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 %45)
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %48 = load i32, i32* @WM8993_DCS_TRIG_DAC_WR_0, align 4
  %49 = load i32, i32* @WM8993_DCS_TRIG_DAC_WR_1, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @wait_for_dc_servo(%struct.snd_soc_component* %47, i32 %50)
  br label %181

52:                                               ; preds = %23, %19
  %53 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %54 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %59 = load i32, i32* @WM8993_DC_SERVO_1, align 4
  %60 = load i32, i32* @WM8993_DCS_SERIES_NO_01_MASK, align 4
  %61 = load i32, i32* @WM8993_DCS_SERIES_NO_01_SHIFT, align 4
  %62 = shl i32 32, %61
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %62)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %65 = load i32, i32* @WM8993_DCS_TRIG_SERIES_0, align 4
  %66 = load i32, i32* @WM8993_DCS_TRIG_SERIES_1, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @wait_for_dc_servo(%struct.snd_soc_component* %64, i32 %67)
  br label %75

69:                                               ; preds = %52
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %71 = load i32, i32* @WM8993_DCS_TRIG_STARTUP_0, align 4
  %72 = load i32, i32* @WM8993_DCS_TRIG_STARTUP_1, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @wait_for_dc_servo(%struct.snd_soc_component* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %57
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = call i64 @wm_hubs_read_dc_servo(%struct.snd_soc_component* %76, i32* %6, i32* %7)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %181

80:                                               ; preds = %75
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %88 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %80
  %92 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %93 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %166

96:                                               ; preds = %91, %80
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %101 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %105 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %103, i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %5, align 8
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %111 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %5, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %117 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %114, i64 %119)
  %121 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %122 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %5, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @WM8993_DCS_DAC_WR_VAL_1_SHIFT, align 4
  %129 = shl i32 %127, %128
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %5, align 8
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %133 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %5, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %139 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %136, i64 %141)
  %143 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %144 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %5, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %153 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %157, i32 %158, i32 %159)
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %162 = load i32, i32* @WM8993_DCS_TRIG_DAC_WR_0, align 4
  %163 = load i32, i32* @WM8993_DCS_TRIG_DAC_WR_1, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @wait_for_dc_servo(%struct.snd_soc_component* %161, i32 %164)
  br label %173

166:                                              ; preds = %91
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @WM8993_DCS_DAC_WR_VAL_1_SHIFT, align 4
  %169 = shl i32 %167, %168
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %166, %96
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %175 = call i64 @wm_hubs_dac_hp_direct(%struct.snd_soc_component* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @wm_hubs_dcs_cache_set(%struct.snd_soc_component* %178, i32 %179)
  br label %181

181:                                              ; preds = %27, %79, %177, %173
  ret void
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @wm_hubs_dac_hp_direct(%struct.snd_soc_component*) #1

declare dso_local i64 @wm_hubs_dcs_cache_get(%struct.snd_soc_component*, %struct.wm_hubs_dcs_cache**) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @wait_for_dc_servo(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @wm_hubs_read_dc_servo(%struct.snd_soc_component*, i32*, i32*) #1

declare dso_local i32 @wm_hubs_dcs_cache_set(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
