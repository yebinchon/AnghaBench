; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_update_class_w.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_update_class_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8995_DAC1_LEFT_MIXER_ROUTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Class W source AIF2DAC\0A\00", align 1
@WM8995_CP_DYN_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Class W source AIF1DAC2\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Class W source AIF1DAC1\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"DAC mixer setting: %x\0A\00", align 1
@WM8995_DAC1_RIGHT_MIXER_ROUTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Left and right DAC mixers different\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Class W enabled\0A\00", align 1
@WM8995_CLASS_W_1 = common dso_local global i32 0, align 4
@WM8995_CP_DYN_PWR_MASK = common dso_local global i32 0, align 4
@WM8995_CP_DYN_SRC_SEL_MASK = common dso_local global i32 0, align 4
@WM8995_CP_DYN_PWR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Class W disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8995_update_class_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8995_update_class_w(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = load i32, i32* @WM8995_DAC1_LEFT_MIXER_ROUTING, align 4
  %9 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %32 [
    i32 128, label %11
    i32 129, label %18
    i32 130, label %25
  ]

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @WM8995_CP_DYN_SRC_SEL_SHIFT, align 4
  %17 = shl i32 2, %16
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @WM8995_CP_DYN_SRC_SEL_SHIFT, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @WM8995_CP_DYN_SRC_SEL_SHIFT, align 4
  %31 = shl i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %25, %18, %11
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %40 = load i32, i32* @WM8995_DAC1_RIGHT_MIXER_ROUTING, align 4
  %41 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %59 = load i32, i32* @WM8995_CLASS_W_1, align 4
  %60 = load i32, i32* @WM8995_CP_DYN_PWR_MASK, align 4
  %61 = load i32, i32* @WM8995_CP_DYN_SRC_SEL_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @WM8995_CP_DYN_PWR, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %62, i32 %65)
  br label %76

67:                                               ; preds = %50
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %73 = load i32, i32* @WM8995_CLASS_W_1, align 4
  %74 = load i32, i32* @WM8995_CP_DYN_PWR_MASK, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %67, %53
  ret void
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
