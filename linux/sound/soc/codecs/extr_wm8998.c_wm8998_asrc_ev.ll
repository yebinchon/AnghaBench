; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8998.c_wm8998_asrc_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8998.c_wm8998_asrc_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@ARIZONA_ASRC_RATE1 = common dso_local global i32 0, align 4
@ARIZONA_ASRC_RATE1_MASK = common dso_local global i32 0, align 4
@ARIZONA_ASRC_RATE1_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported ASRC rate1 (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Illegal ASRC rate1 selector (0x%x)\0A\00", align 1
@ARIZONA_ASRC_RATE2 = common dso_local global i32 0, align 4
@ARIZONA_ASRC_RATE2_MASK = common dso_local global i32 0, align 4
@ARIZONA_ASRC_RATE2_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_ASYNC_SAMPLE_RATE_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported ASRC rate2 (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Illegal ASRC rate2 selector (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8998_asrc_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8998_asrc_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %92 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = load i32, i32* @ARIZONA_ASRC_RATE1, align 4
  %18 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @ARIZONA_ASRC_RATE1_MASK, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @ARIZONA_ASRC_RATE1_SHIFT, align 4
  %23 = load i32, i32* %9, align 4
  %24 = lshr i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %44 [
    i32 0, label %26
    i32 1, label %26
    i32 2, label %26
  ]

26:                                               ; preds = %15, %15, %15
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %28 = load i32, i32* @ARIZONA_SAMPLE_RATE_1, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %28, %29
  %31 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp uge i32 %32, 17
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @arizona_sample_rate_val_to_name(i32 %38)
  %40 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %96

43:                                               ; preds = %26
  br label %52

44:                                               ; preds = %15
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %96

52:                                               ; preds = %43
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = load i32, i32* @ARIZONA_ASRC_RATE2, align 4
  %55 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @ARIZONA_ASRC_RATE2_MASK, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @ARIZONA_ASRC_RATE2_SHIFT, align 4
  %60 = load i32, i32* %9, align 4
  %61 = lshr i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %83 [
    i32 8, label %63
    i32 9, label %63
  ]

63:                                               ; preds = %52, %52
  %64 = load i32, i32* %9, align 4
  %65 = sub i32 %64, 8
  store i32 %65, i32* %9, align 4
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* @ARIZONA_ASYNC_SAMPLE_RATE_1, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %67, %68
  %70 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp uge i32 %71, 17
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @arizona_sample_rate_val_to_name(i32 %77)
  %79 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %96

82:                                               ; preds = %63
  br label %91

83:                                               ; preds = %52
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %96

91:                                               ; preds = %82
  br label %95

92:                                               ; preds = %3
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92, %83, %73, %44, %34
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @arizona_sample_rate_val_to_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
