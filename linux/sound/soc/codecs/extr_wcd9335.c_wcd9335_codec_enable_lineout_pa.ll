; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_lineout_pa.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_lineout_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i64, i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WCD9335_ANA_LO_1_2 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX3_RX_PATH_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX3_RX_PATH_MIX_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX4_RX_PATH_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX4_RX_PATH_MIX_CTL = common dso_local global i32 0, align 4
@WCD9335_ANA_LO_3_4 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX5_RX_PATH_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX5_RX_PATH_MIX_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX6_RX_PATH_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX6_RX_PATH_MIX_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error enabling lineout PA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PGA_MUTE_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PGA_MUTE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_enable_lineout_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_enable_lineout_pa(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WCD9335_ANA_LO_1_2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @WCD9335_CDC_RX3_RX_PATH_CTL, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @WCD9335_CDC_RX3_RX_PATH_MIX_CTL, align 4
  store i32 %27, i32* %10, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @WCD9335_CDC_RX4_RX_PATH_CTL, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @WCD9335_CDC_RX4_RX_PATH_MIX_CTL, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %25
  br label %70

38:                                               ; preds = %3
  %39 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WCD9335_ANA_LO_3_4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 7
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @WCD9335_CDC_RX5_RX_PATH_CTL, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @WCD9335_CDC_RX5_RX_PATH_MIX_CTL, align 4
  store i32 %51, i32* %10, align 4
  br label %61

52:                                               ; preds = %44
  %53 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @WCD9335_CDC_RX6_RX_PATH_CTL, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @WCD9335_CDC_RX6_RX_PATH_MIX_CTL, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %49
  br label %69

62:                                               ; preds = %38
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %95

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %94 [
    i32 128, label %72
    i32 129, label %92
  ]

72:                                               ; preds = %70
  %73 = call i32 @usleep_range(i32 5000, i32 5500)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %77 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_DISABLE, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct.snd_soc_component*, i32, ...) bitcast (i32 (...)* @snd_soc_component_read32 to i32 (%struct.snd_soc_component*, i32, ...)*)(%struct.snd_soc_component* %79, i32 %80)
  %82 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %89 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_DISABLE, align 4
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %72
  br label %94

92:                                               ; preds = %70
  %93 = call i32 @usleep_range(i32 5000, i32 5500)
  br label %94

94:                                               ; preds = %70, %92, %91
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
