; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_dac_hp_direct.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_dac_hp_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8993_OUTPUT_MIXER1 = common dso_local global i32 0, align 4
@WM8993_DACL_TO_HPOUT1L = common dso_local global i32 0, align 4
@WM8993_DACL_TO_MIXOUTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Analogue paths connected: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"HPL connected to mixer\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HPL connected to DAC\0A\00", align 1
@WM8993_OUTPUT_MIXER2 = common dso_local global i32 0, align 4
@WM8993_DACR_TO_HPOUT1R = common dso_local global i32 0, align 4
@WM8993_DACR_TO_MIXOUTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"HPR connected to mixer\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"HPR connected to DAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm_hubs_dac_hp_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_hubs_dac_hp_direct(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = load i32, i32* @WM8993_OUTPUT_MIXER1, align 4
  %7 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @WM8993_DACL_TO_HPOUT1L, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WM8993_DACL_TO_MIXOUTL, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @WM8993_DACL_TO_HPOUT1L, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %73

27:                                               ; preds = %12
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %32
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load i32, i32* @WM8993_OUTPUT_MIXER2, align 4
  %41 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @WM8993_DACR_TO_HPOUT1R, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @WM8993_DACR_TO_MIXOUTR, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @WM8993_DACR_TO_HPOUT1R, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 0, i32* %2, align 4
  br label %73

61:                                               ; preds = %46
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %38
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %66
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %52, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
