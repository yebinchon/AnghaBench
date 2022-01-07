; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_headset_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_headset_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5659_priv = type { i64 }

@__const.rt5659_headset_detect.sleep_time = private unnamed_addr constant [5 x i32] [i32 300, i32 150, i32 100, i32 50, i32 30], align 16
@.str = private unnamed_addr constant [14 x i8] c"Mic Det Power\00", align 1
@RT5659_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5659_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5659_PWR_MB = common dso_local global i32 0, align 4
@RT5659_PWR_FV2 = common dso_local global i32 0, align 4
@RT5659_EJD_CTRL_2 = common dso_local global i32 0, align 4
@RT5659_EJD_CTRL_1 = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i64 0, align 8
@SND_JACK_HEADPHONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"jack_type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5659_headset_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_headset_detect(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.rt5659_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([5 x i32]* @__const.rt5659_headset_detect.sleep_time to i8*), i64 20, i1 false)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5659_priv* %15, %struct.rt5659_priv** %10, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %20 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %22 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %21)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %28 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %29 = load i32, i32* @RT5659_PWR_MB, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %32 = load i32, i32* @RT5659_PWR_MB, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %30, i32 %33)
  %35 = call i32 @msleep(i32 20)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %38 = load i32, i32* @RT5659_PWR_FV2, align 4
  %39 = load i32, i32* @RT5659_PWR_FV2, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @RT5659_EJD_CTRL_2, align 4
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 16736)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = load i32, i32* @RT5659_EJD_CTRL_1, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 32, i32 0)
  %47 = call i32 @msleep(i32 20)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @RT5659_EJD_CTRL_1, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 32, i32 32)
  br label %51

51:                                               ; preds = %75, %18
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @msleep(i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = load i32, i32* @RT5659_EJD_CTRL_2, align 4
  %62 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %60, i32 %61)
  %63 = and i32 %62, 3
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %74, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68, %54
  br label %76

75:                                               ; preds = %71
  br label %51

76:                                               ; preds = %74, %51
  %77 = load i32, i32* %6, align 4
  switch i32 %77, label %84 [
    i32 1, label %78
  ]

78:                                               ; preds = %76
  %79 = load i64, i64* @SND_JACK_HEADSET, align 8
  %80 = load %struct.rt5659_priv*, %struct.rt5659_priv** %10, align 8
  %81 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = call i32 @rt5659_enable_push_button_irq(%struct.snd_soc_component* %82, i32 1)
  br label %96

84:                                               ; preds = %76
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %86 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %85, i32 %86, i32 %87)
  %89 = load i64, i64* @SND_JACK_HEADPHONE, align 8
  %90 = load %struct.rt5659_priv*, %struct.rt5659_priv** %10, align 8
  %91 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %93 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %95 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %94)
  br label %96

96:                                               ; preds = %84, %78
  br label %113

97:                                               ; preds = %2
  %98 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %99 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %101 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %100)
  %102 = load %struct.rt5659_priv*, %struct.rt5659_priv** %10, align 8
  %103 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SND_JACK_HEADSET, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = call i32 @rt5659_enable_push_button_irq(%struct.snd_soc_component* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %97
  %111 = load %struct.rt5659_priv*, %struct.rt5659_priv** %10, align 8
  %112 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %96
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %115 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rt5659_priv*, %struct.rt5659_priv** %10, align 8
  %118 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  %121 = load %struct.rt5659_priv*, %struct.rt5659_priv** %10, align 8
  %122 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  ret i32 %124
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @rt5659_enable_push_button_irq(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
