; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_sample_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_sample_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@FV_WL_16 = common dso_local global i32 0, align 4
@FV_WL_20 = common dso_local global i32 0, align 4
@FV_WL_24 = common dso_local global i32 0, align 4
@FV_WL_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported format width (%d)\0A\00", align 1
@R_I2SP1CTL = common dso_local global i32 0, align 4
@R_I2SP2CTL = common dso_local global i32 0, align 4
@R_I2SP3CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"AIF ID not recognized (%d)\0A\00", align 1
@FM_I2SPCTL_WL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set sample width (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @set_aif_sample_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_aif_sample_format(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %11, label %20 [
    i32 135, label %12
    i32 134, label %14
    i32 133, label %16
    i32 132, label %18
    i32 131, label %18
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @FV_WL_16, align 4
  store i32 %13, i32* %9, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load i32, i32* @FV_WL_20, align 4
  store i32 %15, i32* %9, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load i32, i32* @FV_WL_24, align 4
  store i32 %17, i32* %9, align 4
  br label %29

18:                                               ; preds = %3, %3
  %19 = load i32, i32* @FV_WL_32, align 4
  store i32 %19, i32* %9, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %18, %16, %14, %12
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %37 [
    i32 130, label %31
    i32 129, label %33
    i32 128, label %35
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @R_I2SP1CTL, align 4
  store i32 %32, i32* %8, align 4
  br label %46

33:                                               ; preds = %29
  %34 = load i32, i32* @R_I2SP2CTL, align 4
  store i32 %34, i32* %8, align 4
  br label %46

35:                                               ; preds = %29
  %36 = load i32, i32* @R_I2SP3CTL, align 4
  store i32 %36, i32* %8, align 4
  br label %46

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %62

46:                                               ; preds = %35, %33, %31
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @FM_I2SPCTL_WL, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %54, %37, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
