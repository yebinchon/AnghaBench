; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_in_analog_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_in_analog_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32 }
%struct.wm5110_priv = type { i32, i32*, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@ARIZONA_IN1L_CONTROL = common dso_local global i32 0, align 4
@ARIZONA_IN1L_PGA_VOL_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1L_PGA_VOL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm5110_in_analog_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_in_analog_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona_priv*, align 8
  %10 = alloca %struct.wm5110_priv*, align 8
  %11 = alloca %struct.arizona*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x %struct.reg_sequence], align 16
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call i8* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  %21 = bitcast i8* %20 to %struct.arizona_priv*
  store %struct.arizona_priv* %21, %struct.arizona_priv** %9, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = call i8* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  %24 = bitcast i8* %23 to %struct.wm5110_priv*
  store %struct.wm5110_priv* %24, %struct.wm5110_priv** %10, align 8
  %25 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %26 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %25, i32 0, i32 0
  %27 = load %struct.arizona*, %struct.arizona** %26, align 8
  store %struct.arizona* %27, %struct.arizona** %11, align 8
  %28 = bitcast [3 x %struct.reg_sequence]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 36, i1 false)
  %29 = bitcast i8* %28 to [3 x %struct.reg_sequence]*
  %30 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %30, i32 0, i32 0
  store i32 128, i32* %31, align 16
  %32 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %30, i32 0, i32 1
  store i32 3, i32* %32, align 4
  %33 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %29, i32 0, i32 1
  %34 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %33, i32 0, i32 0
  store i32 861, i32* %34, align 4
  %35 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %29, i32 0, i32 2
  %36 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %35, i32 0, i32 0
  store i32 128, i32* %36, align 8
  %37 = load i32, i32* @ARIZONA_IN1L_CONTROL, align 4
  %38 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, 1
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @ARIZONA_IN1L_PGA_VOL_MASK, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %139 [
    i32 128, label %46
    i32 129, label %65
    i32 130, label %108
  ]

46:                                               ; preds = %3
  %47 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, 1
  %51 = mul nsw i32 %50, 2
  %52 = shl i32 3, %51
  %53 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %54 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %58 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %62 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %141

65:                                               ; preds = %3
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %66, i32 %67)
  %69 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %70 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 %68, i32* %76, align 4
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @ARIZONA_IN1L_PGA_VOL_SHIFT, align 4
  %81 = shl i32 64, %80
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %81)
  %83 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %84 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %88 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %65
  %92 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %93 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %14, i64 0, i64 1
  %96 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.arizona*, %struct.arizona** %11, align 8
  %98 = getelementptr inbounds %struct.arizona, %struct.arizona* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %14, i64 0, i64 0
  %101 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %14, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %101)
  %103 = call i32 @regmap_multi_reg_write_bypassed(i32 %99, %struct.reg_sequence* %100, i32 %102)
  %104 = call i32 @msleep(i32 55)
  %105 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %106 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %91, %65
  br label %140

108:                                              ; preds = %3
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %113 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %116 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %111, i32 %120)
  %122 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %123 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.wm5110_priv*, %struct.wm5110_priv** %10, align 8
  %127 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %108
  %131 = load %struct.arizona*, %struct.arizona** %11, align 8
  %132 = getelementptr inbounds %struct.arizona, %struct.arizona* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %14, i64 0, i64 0
  %135 = getelementptr inbounds [3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* %14, i64 0, i64 0
  %136 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %135)
  %137 = call i32 @regmap_multi_reg_write_bypassed(i32 %133, %struct.reg_sequence* %134, i32 %136)
  br label %138

138:                                              ; preds = %130, %108
  br label %140

139:                                              ; preds = %3
  br label %140

140:                                              ; preds = %139, %138, %107
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %46
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i8* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regmap_multi_reg_write_bypassed(i32, %struct.reg_sequence*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
