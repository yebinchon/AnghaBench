; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_update_class_w.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_update_class_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32 (%struct.snd_soc_component.0*)* }
%struct.snd_soc_component.0 = type opaque

@WM8993_CP_DYN_V = common dso_local global i32 0, align 4
@WM8993_CP_DYN_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Class W %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@WM8993_CLASS_W_0 = common dso_local global i32 0, align 4
@WM8993_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8993_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm_hubs_update_class_w(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm_hubs_data*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm_hubs_data* %6, %struct.wm_hubs_data** %3, align 8
  %7 = load i32, i32* @WM8993_CP_DYN_V, align 4
  %8 = load i32, i32* @WM8993_CP_DYN_FREQ, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call i32 @wm_hubs_dac_hp_direct(%struct.snd_soc_component* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %16 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %15, i32 0, i32 0
  %17 = load i32 (%struct.snd_soc_component.0*)*, i32 (%struct.snd_soc_component.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.snd_soc_component.0*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %3, align 8
  %21 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %20, i32 0, i32 0
  %22 = load i32 (%struct.snd_soc_component.0*)*, i32 (%struct.snd_soc_component.0*)** %21, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = bitcast %struct.snd_soc_component* %23 to %struct.snd_soc_component.0*
  %25 = call i32 %22(%struct.snd_soc_component.0* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %19, %14
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 @dev_vdbg(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %38 = load i32, i32* @WM8993_CLASS_W_0, align 4
  %39 = load i32, i32* @WM8993_CP_DYN_V, align 4
  %40 = load i32, i32* @WM8993_CP_DYN_FREQ, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %45 = load i32, i32* @WM8993_LEFT_OUTPUT_VOLUME, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = load i32, i32* @WM8993_LEFT_OUTPUT_VOLUME, align 4
  %48 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %46, i32 %47)
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %51 = load i32, i32* @WM8993_RIGHT_OUTPUT_VOLUME, align 4
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %53 = load i32, i32* @WM8993_RIGHT_OUTPUT_VOLUME, align 4
  %54 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %52, i32 %53)
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 %54)
  ret void
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm_hubs_dac_hp_direct(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
