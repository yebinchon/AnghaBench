; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_clock_format_from_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_clock_format_from_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@R_I2SP1CTL = common dso_local global i32 0, align 4
@R_I2SP2CTL = common dso_local global i32 0, align 4
@R_I2SP3CTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DAI %d unknown (%d)\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@FV_BCLKP_NOT_INVERTED = common dso_local global i32 0, align 4
@FV_LRCLKP_NOT_INVERTED = common dso_local global i32 0, align 4
@FV_LRCLKP_INVERTED = common dso_local global i32 0, align 4
@FV_BCLKP_INVERTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Format unknown (%d)\0A\00", align 1
@FM_I2SPCTL_BCLKP = common dso_local global i32 0, align 4
@FM_I2SPCTL_LRCLKP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to set clock polarity for DAI%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @set_aif_clock_format_from_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_aif_clock_format_from_fmt(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
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
  br label %78

29:                                               ; preds = %16, %14, %12
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %49 [
    i32 131, label %33
    i32 132, label %37
    i32 133, label %41
    i32 134, label %45
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @FV_BCLKP_NOT_INVERTED, align 4
  %35 = load i32, i32* @FV_LRCLKP_NOT_INVERTED, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %9, align 4
  br label %58

37:                                               ; preds = %29
  %38 = load i32, i32* @FV_BCLKP_NOT_INVERTED, align 4
  %39 = load i32, i32* @FV_LRCLKP_INVERTED, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %9, align 4
  br label %58

41:                                               ; preds = %29
  %42 = load i32, i32* @FV_BCLKP_INVERTED, align 4
  %43 = load i32, i32* @FV_LRCLKP_NOT_INVERTED, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  br label %58

45:                                               ; preds = %29
  %46 = load i32, i32* @FV_BCLKP_INVERTED, align 4
  %47 = load i32, i32* @FV_LRCLKP_INVERTED, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %9, align 4
  br label %58

49:                                               ; preds = %29
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %78

58:                                               ; preds = %45, %41, %37, %33
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @FM_I2SPCTL_BCLKP, align 4
  %62 = load i32, i32* @FM_I2SPCTL_LRCLKP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %59, i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %68, %49, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
