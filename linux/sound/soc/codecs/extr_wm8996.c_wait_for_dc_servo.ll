; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wait_for_dc_servo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wait_for_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.i2c_client = type { i64 }
%struct.wm8996_priv = type { i32 }

@WM8996_DC_SERVO_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DC servo timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DC servo state: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"DC servo timed out for %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"DC servo complete for %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wait_for_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_dc_servo(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.wm8996_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.i2c_client* @to_i2c_client(i32 %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm8996_priv* %14, %struct.wm8996_priv** %6, align 8
  store i64 200, i64* %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @WM8996_DC_SERVO_2, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %58, %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %25, i32 0, i32 0
  %27 = call i32 @msecs_to_jiffies(i32 200)
  %28 = call i64 @wait_for_completion_timeout(i32* %26, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %24
  br label %41

37:                                               ; preds = %19
  %38 = call i32 @msleep(i32 1)
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WM8996_DC_SERVO_2, align 4
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %19, label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %75

69:                                               ; preds = %60
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  ret void
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
