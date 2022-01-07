; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_headset_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_headset_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5665_priv = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@RT5665_MICBIAS_2 = common dso_local global i32 0, align 4
@RT5665_GPIO_STA = common dso_local global i32 0, align 4
@RT5665_EJD_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_EJD_CTRL_3 = common dso_local global i32 0, align 4
@RT5665_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5665_SAR_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5665_SAR_IL_CMD_4 = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i64 0, align 8
@SND_JACK_HEADPHONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"jack_type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5665_headset_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_headset_detect(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5665_priv*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt5665_priv* %10, %struct.rt5665_priv** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %129

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %17 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %19 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %18)
  %20 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %21 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RT5665_MICBIAS_2, align 4
  %24 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 256, i32 256)
  %25 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RT5665_GPIO_STA, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %15
  %34 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %35 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RT5665_EJD_CTRL_1, align 4
  %38 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 256, i32 0)
  %39 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RT5665_GPIO_STA, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %8)
  br label %44

44:                                               ; preds = %48, %33
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = call i32 @usleep_range(i32 10000, i32 15000)
  %50 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %51 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RT5665_GPIO_STA, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %8)
  br label %44

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %15
  %57 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %58 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RT5665_EJD_CTRL_1, align 4
  %61 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 416, i32 288)
  %62 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %63 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RT5665_EJD_CTRL_3, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 13348)
  %67 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %68 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RT5665_IL_CMD_1, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 72)
  %72 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %73 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RT5665_SAR_IL_CMD_1, align 4
  %76 = call i32 @regmap_write(i32 %74, i32 %75, i32 41617)
  %77 = call i32 @usleep_range(i32 10000, i32 15000)
  %78 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %79 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RT5665_SAR_IL_CMD_4, align 4
  %82 = call i32 @snd_soc_component_read32(i32 %80, i32 %81)
  %83 = and i32 %82, 2047
  %84 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %85 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %87 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %56
  %92 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %93 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %97

96:                                               ; preds = %56
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi i32 [ %95, %91 ], [ 729, %96 ]
  store i32 %98, i32* %7, align 4
  %99 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %100 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i64, i64* @SND_JACK_HEADSET, align 8
  %106 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %107 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = call i32 @rt5665_enable_push_button_irq(%struct.snd_soc_component* %108, i32 1)
  br label %128

110:                                              ; preds = %97
  %111 = load i64, i64* @SND_JACK_HEADPHONE, align 8
  %112 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %113 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %115 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RT5665_SAR_IL_CMD_1, align 4
  %118 = call i32 @regmap_write(i32 %116, i32 %117, i32 8849)
  %119 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %120 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @RT5665_MICBIAS_2, align 4
  %123 = call i32 @regmap_update_bits(i32 %121, i32 %122, i32 256, i32 0)
  %124 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %125 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %126 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %127 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %126)
  br label %128

128:                                              ; preds = %110, %104
  br label %155

129:                                              ; preds = %2
  %130 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %131 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RT5665_SAR_IL_CMD_1, align 4
  %134 = call i32 @regmap_write(i32 %132, i32 %133, i32 8849)
  %135 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %136 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RT5665_MICBIAS_2, align 4
  %139 = call i32 @regmap_update_bits(i32 %137, i32 %138, i32 256, i32 0)
  %140 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %141 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %143 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %142)
  %144 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %145 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SND_JACK_HEADSET, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %129
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %151 = call i32 @rt5665_enable_push_button_irq(%struct.snd_soc_component* %150, i32 0)
  br label %152

152:                                              ; preds = %149, %129
  %153 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %154 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %128
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %157 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %160 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @dev_dbg(i32 %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %161)
  %163 = load %struct.rt5665_priv*, %struct.rt5665_priv** %5, align 8
  %164 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  ret i32 %166
}

declare dso_local %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(i32, i32) #1

declare dso_local i32 @rt5665_enable_push_button_irq(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
