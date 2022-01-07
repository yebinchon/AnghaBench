; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@ADAU17X1_DSP_SAMPLING_RATE = common dso_local global i32 0, align 4
@ADAU17X1_DSP_RUN = common dso_local global i32 0, align 4
@ADAU17X1_DSP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @adau17x1_setup_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_setup_firmware(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adau*, align 8
  %10 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.adau* %12, %struct.adau** %9, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %13)
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %10, align 8
  %15 = load %struct.adau*, %struct.adau** %9, align 8
  %16 = getelementptr inbounds %struct.adau, %struct.adau* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

23:                                               ; preds = %2
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %10, align 8
  %25 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %24)
  %26 = load %struct.adau*, %struct.adau** %9, align 8
  %27 = getelementptr inbounds %struct.adau, %struct.adau* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ADAU17X1_DSP_SAMPLING_RATE, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %85

34:                                               ; preds = %23
  %35 = load %struct.adau*, %struct.adau** %9, align 8
  %36 = getelementptr inbounds %struct.adau, %struct.adau* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ADAU17X1_DSP_RUN, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %8)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %85

43:                                               ; preds = %34
  %44 = load %struct.adau*, %struct.adau** %9, align 8
  %45 = getelementptr inbounds %struct.adau, %struct.adau* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ADAU17X1_DSP_ENABLE, align 4
  %48 = call i32 @regmap_write(i32 %46, i32 %47, i32 1)
  %49 = load %struct.adau*, %struct.adau** %9, align 8
  %50 = getelementptr inbounds %struct.adau, %struct.adau* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ADAU17X1_DSP_SAMPLING_RATE, align 4
  %53 = call i32 @regmap_write(i32 %51, i32 %52, i32 15)
  %54 = load %struct.adau*, %struct.adau** %9, align 8
  %55 = getelementptr inbounds %struct.adau, %struct.adau* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ADAU17X1_DSP_RUN, align 4
  %58 = call i32 @regmap_write(i32 %56, i32 %57, i32 0)
  %59 = load %struct.adau*, %struct.adau** %9, align 8
  %60 = getelementptr inbounds %struct.adau, %struct.adau* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @sigmadsp_setup(%struct.TYPE_2__* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %43
  %67 = load %struct.adau*, %struct.adau** %9, align 8
  %68 = getelementptr inbounds %struct.adau, %struct.adau* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ADAU17X1_DSP_ENABLE, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 0)
  br label %85

72:                                               ; preds = %43
  %73 = load %struct.adau*, %struct.adau** %9, align 8
  %74 = getelementptr inbounds %struct.adau, %struct.adau* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ADAU17X1_DSP_SAMPLING_RATE, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @regmap_write(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.adau*, %struct.adau** %9, align 8
  %80 = getelementptr inbounds %struct.adau, %struct.adau* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ADAU17X1_DSP_RUN, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %66, %42, %33
  %86 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %10, align 8
  %87 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @sigmadsp_setup(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
