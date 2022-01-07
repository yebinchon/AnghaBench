; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_format_from_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_format_from_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@R_I2SP1CTL = common dso_local global i32 0, align 4
@R_I2SP2CTL = common dso_local global i32 0, align 4
@R_I2SP3CTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DAI %d unknown (%d)\0A\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@FV_FORMAT_RIGHT = common dso_local global i32 0, align 4
@FV_FORMAT_LEFT = common dso_local global i32 0, align 4
@FV_FORMAT_I2S = common dso_local global i32 0, align 4
@FV_FORMAT_TDM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Format unsupported (%d)\0A\00", align 1
@FM_I2SPCTL_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to set DAI %d format (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @set_aif_format_from_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_aif_format_from_fmt(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %18 [
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @R_I2SP1CTL, align 4
  store i32 %13, i32* %8, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load i32, i32* @R_I2SP2CTL, align 4
  store i32 %15, i32* %8, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load i32, i32* @R_I2SP3CTL, align 4
  store i32 %17, i32* %8, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, 1
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %86

29:                                               ; preds = %16, %14, %12
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %59 [
    i32 131, label %33
    i32 132, label %35
    i32 133, label %37
    i32 135, label %39
    i32 134, label %49
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @FV_FORMAT_RIGHT, align 4
  store i32 %34, i32* %9, align 4
  br label %68

35:                                               ; preds = %29
  %36 = load i32, i32* @FV_FORMAT_LEFT, align 4
  store i32 %36, i32* %9, align 4
  br label %68

37:                                               ; preds = %29
  %38 = load i32, i32* @FV_FORMAT_I2S, align 4
  store i32 %38, i32* %9, align 4
  br label %68

39:                                               ; preds = %29
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @set_aif_tdm_delay(%struct.snd_soc_component* %40, i32 %41, i32 1)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %86

47:                                               ; preds = %39
  %48 = load i32, i32* @FV_FORMAT_TDM, align 4
  store i32 %48, i32* %9, align 4
  br label %68

49:                                               ; preds = %29
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @set_aif_tdm_delay(%struct.snd_soc_component* %50, i32 %51, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %86

57:                                               ; preds = %49
  %58 = load i32, i32* @FV_FORMAT_TDM, align 4
  store i32 %58, i32* %9, align 4
  br label %68

59:                                               ; preds = %29
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %86

68:                                               ; preds = %57, %47, %37, %35, %33
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @FM_I2SPCTL_FORMAT, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %76, %59, %55, %45, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @set_aif_tdm_delay(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
