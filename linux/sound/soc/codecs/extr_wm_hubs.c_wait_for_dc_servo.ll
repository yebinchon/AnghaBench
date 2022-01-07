; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wait_for_dc_servo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wait_for_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32, i64 }

@WM8993_DCS_ENA_CHAN_0 = common dso_local global i32 0, align 4
@WM8993_DCS_ENA_CHAN_1 = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Waiting for DC servo...\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"DC servo: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Timed out waiting for DC Servo %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wait_for_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_dc_servo(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm_hubs_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm_hubs_data* %11, %struct.wm_hubs_data** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @WM8993_DCS_ENA_CHAN_0, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WM8993_DCS_ENA_CHAN_1, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @WM8993_DC_SERVO_0, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %26 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %31

30:                                               ; preds = %2
  store i32 400, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %36 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %41 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %40, i32 0, i32 0
  %42 = call i32 @msecs_to_jiffies(i32 250)
  %43 = call i32 @wait_for_completion_timeout(i32* %41, i32 %42)
  br label %46

44:                                               ; preds = %32
  %45 = call i32 @msleep(i32 1)
  br label %46

46:                                               ; preds = %44, %39
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32, i32* @WM8993_DC_SERVO_0, align 4
  %49 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i1 [ false, %55 ], [ %63, %60 ]
  br i1 %65, label %32, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  ret void
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
