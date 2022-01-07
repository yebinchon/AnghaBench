; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_enable_dmic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_enable_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid DMIC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid DMIC line on the component\0A\00", align 1
@LPASS_CDC_CLK_DMIC_B1_CTL = common dso_local global i32 0, align 4
@DMIC_B1_CTL_DMIC0_CLK_SEL_MASK = common dso_local global i32 0, align 4
@DMIC_B1_CTL_DMIC0_CLK_SEL_DIV3 = common dso_local global i32 0, align 4
@LPASS_CDC_TX1_DMIC_CTL = common dso_local global i32 0, align 4
@TXN_DMIC_CTL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@TXN_DMIC_CTL_CLK_SEL_DIV3 = common dso_local global i32 0, align 4
@LPASS_CDC_TX2_DMIC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @msm8916_wcd_digital_enable_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm8916_wcd_digital_enable_dmic(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @strpbrk(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %3
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @kstrtouint(i8* %30, i32 10, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = icmp ugt i32 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %34, %29
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %67

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %66 [
    i32 128, label %46
  ]

46:                                               ; preds = %44
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %48 = load i32, i32* @LPASS_CDC_CLK_DMIC_B1_CTL, align 4
  %49 = load i32, i32* @DMIC_B1_CTL_DMIC0_CLK_SEL_MASK, align 4
  %50 = load i32, i32* @DMIC_B1_CTL_DMIC0_CLK_SEL_DIV3, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %65 [
    i32 1, label %53
    i32 2, label %59
  ]

53:                                               ; preds = %46
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = load i32, i32* @LPASS_CDC_TX1_DMIC_CTL, align 4
  %56 = load i32, i32* @TXN_DMIC_CTL_CLK_SEL_MASK, align 4
  %57 = load i32, i32* @TXN_DMIC_CTL_CLK_SEL_DIV3, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  br label %65

59:                                               ; preds = %46
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %61 = load i32, i32* @LPASS_CDC_TX2_DMIC_CTL, align 4
  %62 = load i32, i32* @TXN_DMIC_CTL_CLK_SEL_MASK, align 4
  %63 = load i32, i32* @TXN_DMIC_CTL_CLK_SEL_DIV3, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %46, %59, %53
  br label %66

66:                                               ; preds = %44, %65
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %37, %22
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i8* @strpbrk(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
