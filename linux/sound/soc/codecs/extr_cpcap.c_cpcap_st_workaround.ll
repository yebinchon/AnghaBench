; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_st_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_st_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cpcap_audio = type { i64, i32 }

@CPCAP_VENDOR_ST = common dso_local global i64 0, align 8
@CPCAP_REG_TEST = common dso_local global i32 0, align 4
@STM_STDAC_EN_TEST_PRE = common dso_local global i32 0, align 4
@CPCAP_REG_ST_TEST1 = common dso_local global i32 0, align 4
@STM_STDAC_EN_ST_TEST1_PRE = common dso_local global i32 0, align 4
@STM_STDAC_ACTIVATE_RAMP_TIME = common dso_local global i32 0, align 4
@STM_STDAC_EN_ST_TEST1_POST = common dso_local global i32 0, align 4
@STM_STDAC_EN_TEST_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cpcap_st_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_st_workaround(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cpcap_audio*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cpcap_audio* %16, %struct.cpcap_audio** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.cpcap_audio*, %struct.cpcap_audio** %9, align 8
  %18 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CPCAP_VENDOR_ST, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %63 [
    i32 128, label %25
    i32 129, label %43
  ]

25:                                               ; preds = %23
  %26 = load %struct.cpcap_audio*, %struct.cpcap_audio** %9, align 8
  %27 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CPCAP_REG_TEST, align 4
  %30 = load i32, i32* @STM_STDAC_EN_TEST_PRE, align 4
  %31 = call i32 @regmap_write(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %25
  %37 = load %struct.cpcap_audio*, %struct.cpcap_audio** %9, align 8
  %38 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CPCAP_REG_ST_TEST1, align 4
  %41 = load i32, i32* @STM_STDAC_EN_ST_TEST1_PRE, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %64

43:                                               ; preds = %23
  %44 = load i32, i32* @STM_STDAC_ACTIVATE_RAMP_TIME, align 4
  %45 = call i32 @msleep(i32 %44)
  %46 = load %struct.cpcap_audio*, %struct.cpcap_audio** %9, align 8
  %47 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CPCAP_REG_ST_TEST1, align 4
  %50 = load i32, i32* @STM_STDAC_EN_ST_TEST1_POST, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %66

56:                                               ; preds = %43
  %57 = load %struct.cpcap_audio*, %struct.cpcap_audio** %9, align 8
  %58 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CPCAP_REG_TEST, align 4
  %61 = load i32, i32* @STM_STDAC_EN_TEST_POST, align 4
  %62 = call i32 @regmap_write(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %64

63:                                               ; preds = %23
  br label %64

64:                                               ; preds = %63, %56, %36
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %54, %34, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
