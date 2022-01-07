; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_byt-rt5640.c_byt_rt5640_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_byt-rt5640.c_byt_rt5640_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_route = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card*, %struct.TYPE_4__* }
%struct.snd_soc_card = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@byt_rt5640_controls = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to add card controls\0A\00", align 1
@byt_rt5640_quirk_table = common dso_local global i32 0, align 4
@byt_rt5640_quirk = common dso_local global i32 0, align 4
@byt_rt5640_intmic_in1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_intmic_dmic2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_intmic_dmic1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5640_DMIC_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @byt_rt5640_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_rt5640_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dapm_route*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %15, align 8
  store %struct.snd_soc_card* %16, %struct.snd_soc_card** %6, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %21 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_controls, align 8
  %22 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_controls, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %22)
  %24 = call i32 @snd_soc_add_card_controls(%struct.snd_soc_card* %20, %struct.snd_soc_dapm_route* %21, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %81

33:                                               ; preds = %1
  %34 = load i32, i32* @byt_rt5640_quirk_table, align 4
  %35 = call i32 @dmi_check_system(i32 %34)
  %36 = load i32, i32* @byt_rt5640_quirk, align 4
  %37 = call i32 @BYT_RT5640_MAP(i32 %36)
  switch i32 %37, label %46 [
    i32 128, label %38
    i32 129, label %42
  ]

38:                                               ; preds = %33
  %39 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_in1_map, align 8
  store %struct.snd_soc_dapm_route* %39, %struct.snd_soc_dapm_route** %7, align 8
  %40 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_in1_map, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %40)
  store i32 %41, i32* %8, align 4
  br label %50

42:                                               ; preds = %33
  %43 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic2_map, align 8
  store %struct.snd_soc_dapm_route* %43, %struct.snd_soc_dapm_route** %7, align 8
  %44 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic2_map, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %44)
  store i32 %45, i32* %8, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic1_map, align 8
  store %struct.snd_soc_dapm_route* %47, %struct.snd_soc_dapm_route** %7, align 8
  %48 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic1_map, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %42, %38
  %51 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %52 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %51, i32 0, i32 0
  %53 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_5__* %52, %struct.snd_soc_dapm_route* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %81

60:                                               ; preds = %50
  %61 = load i32, i32* @byt_rt5640_quirk, align 4
  %62 = load i32, i32* @BYT_RT5640_DMIC_EN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %67 = call i32 @rt5640_dmic_enable(%struct.snd_soc_component* %66, i32 0, i32 0)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %81

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %74, i32 0, i32 0
  %76 = call i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_5__* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %78 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %77, i32 0, i32 0
  %79 = call i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_5__* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %70, %58, %27
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @snd_soc_add_card_controls(%struct.snd_soc_card*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @BYT_RT5640_MAP(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.TYPE_5__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @rt5640_dmic_enable(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
