; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_aif2clk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_aif2clk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8994_AIF2_CONTROL_1 = common dso_local global i32 0, align 4
@WM8994_AIF2ADCL_SRC = common dso_local global i32 0, align 4
@WM8994_AIF2ADCR_SRC = common dso_local global i32 0, align 4
@WM8994_AIF2ADCR_ENA = common dso_local global i32 0, align 4
@WM8994_AIF2ADCL_ENA = common dso_local global i32 0, align 4
@WM8994_AIF2_CONTROL_2 = common dso_local global i32 0, align 4
@WM8994_AIF2DACL_SRC = common dso_local global i32 0, align 4
@WM8994_AIF2DACR_SRC = common dso_local global i32 0, align 4
@WM8994_AIF2DACR_ENA = common dso_local global i32 0, align 4
@WM8994_AIF2DACL_ENA = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_4 = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_5 = common dso_local global i32 0, align 4
@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF2DSPCLK_ENA = common dso_local global i32 0, align 4
@WM8994_SYSDSPCLK_ENA = common dso_local global i32 0, align 4
@wm8994_vu_bits = common dso_local global %struct.TYPE_3__* null, align 8
@WM8994_AIF1DSPCLK_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @aif2clk_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aif2clk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %181 [
    i32 128, label %17
    i32 130, label %123
    i32 129, label %150
    i32 131, label %150
  ]

17:                                               ; preds = %3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = load i32, i32* @WM8994_AIF2_CONTROL_1, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @WM8994_AIF2ADCL_SRC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @WM8994_AIF2ADCR_SRC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @WM8994_AIF2ADCR_ENA, align 4
  store i32 %31, i32* %10, align 4
  br label %49

32:                                               ; preds = %25, %17
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @WM8994_AIF2ADCL_SRC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @WM8994_AIF2ADCR_SRC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @WM8994_AIF2ADCL_ENA, align 4
  store i32 %43, i32* %10, align 4
  br label %48

44:                                               ; preds = %37, %32
  %45 = load i32, i32* @WM8994_AIF2ADCL_ENA, align 4
  %46 = load i32, i32* @WM8994_AIF2ADCR_ENA, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %42
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @WM8994_AIF2_CONTROL_2, align 4
  %52 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @WM8994_AIF2DACL_SRC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @WM8994_AIF2DACR_SRC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  store i32 %63, i32* %9, align 4
  br label %81

64:                                               ; preds = %57, %49
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @WM8994_AIF2DACL_SRC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @WM8994_AIF2DACR_SRC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  store i32 %75, i32* %9, align 4
  br label %80

76:                                               ; preds = %69, %64
  %77 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  %78 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %74
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %83 = load i32, i32* @WM8994_POWER_MANAGEMENT_4, align 4
  %84 = load i32, i32* @WM8994_AIF2ADCL_ENA, align 4
  %85 = load i32, i32* @WM8994_AIF2ADCR_ENA, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %86, i32 %87)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %90 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %91 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  %92 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %97 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %98 = load i32, i32* @WM8994_AIF2DSPCLK_ENA, align 4
  %99 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @WM8994_AIF2DSPCLK_ENA, align 4
  %102 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %100, i32 %103)
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %106 = load i32, i32* @WM8994_POWER_MANAGEMENT_4, align 4
  %107 = load i32, i32* @WM8994_AIF2ADCL_ENA, align 4
  %108 = load i32, i32* @WM8994_AIF2ADCR_ENA, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @WM8994_AIF2ADCL_ENA, align 4
  %111 = load i32, i32* @WM8994_AIF2ADCR_ENA, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %105, i32 %106, i32 %109, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %115 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %116 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  %117 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  %120 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %114, i32 %115, i32 %118, i32 %121)
  br label %181

123:                                              ; preds = %3
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8994_vu_bits, align 8
  %127 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %126)
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %124
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8994_vu_bits, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8994_vu_bits, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %137, i32 %143)
  %145 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %136, i32 %144)
  br label %146

146:                                              ; preds = %129
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %124

149:                                              ; preds = %124
  br label %181

150:                                              ; preds = %3, %3
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %152 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %153 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  %154 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %151, i32 %152, i32 %155, i32 0)
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %158 = load i32, i32* @WM8994_POWER_MANAGEMENT_4, align 4
  %159 = load i32, i32* @WM8994_AIF2ADCL_ENA, align 4
  %160 = load i32, i32* @WM8994_AIF2ADCR_ENA, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %157, i32 %158, i32 %161, i32 0)
  %163 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %164 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %165 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %163, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @WM8994_AIF1DSPCLK_ENA, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %150
  %171 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  store i32 %171, i32* %11, align 4
  br label %173

172:                                              ; preds = %150
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %172, %170
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %175 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %176 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  %177 = load i32, i32* @WM8994_AIF2DSPCLK_ENA, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %174, i32 %175, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %3, %173, %149, %81
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
