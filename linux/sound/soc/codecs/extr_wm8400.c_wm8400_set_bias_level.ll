; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8400.c_wm8400_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8400.c_wm8400_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8400_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WM8400_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8400_VMID_MODE_MASK = common dso_local global i32 0, align 4
@power = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@WM8400_CODEC_ENA = common dso_local global i32 0, align 4
@WM8400_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8400_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8400_SOFTST = common dso_local global i32 0, align 4
@WM8400_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8400_POBCTRL = common dso_local global i32 0, align 4
@WM8400_VREF_ENA = common dso_local global i32 0, align 4
@WM8400_BUFIOEN = common dso_local global i32 0, align 4
@WM8400_DAC_CTRL = common dso_local global i32 0, align 4
@WM8400_DAC_MUTE = common dso_local global i32 0, align 4
@WM8400_SPK_ENA = common dso_local global i32 0, align 4
@WM8400_OUT3_ENA = common dso_local global i32 0, align 4
@WM8400_OUT4_ENA = common dso_local global i32 0, align 4
@WM8400_LOUT_ENA = common dso_local global i32 0, align 4
@WM8400_ROUT_ENA = common dso_local global i32 0, align 4
@WM8400_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8400_DIS_LLINE = common dso_local global i32 0, align 4
@WM8400_DIS_RLINE = common dso_local global i32 0, align 4
@WM8400_DIS_OUT3 = common dso_local global i32 0, align 4
@WM8400_DIS_OUT4 = common dso_local global i32 0, align 4
@WM8400_DIS_LOUT = common dso_local global i32 0, align 4
@WM8400_DIS_ROUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8400_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8400_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.wm8400_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8400_priv* %10, %struct.wm8400_priv** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %189 [
    i32 130, label %12
    i32 129, label %13
    i32 128, label %25
    i32 131, label %99
  ]

12:                                               ; preds = %2
  br label %189

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  %17 = load i32, i32* @WM8400_VMID_MODE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 2
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 %23)
  br label %189

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %26)
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %87

29:                                               ; preds = %25
  %30 = load i32*, i32** @power, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = load i32*, i32** @power, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @regulator_bulk_enable(i32 %31, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.wm8400_priv*, %struct.wm8400_priv** %6, align 8
  %39 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %190

46:                                               ; preds = %29
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %48 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %49 = load i32, i32* @WM8400_CODEC_ENA, align 4
  %50 = load i32, i32* @WM8400_SYSCLK_ENA, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %54 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %55 = load i32, i32* @WM8400_SOFTST, align 4
  %56 = load i32, i32* @WM8400_BUFDCOPEN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WM8400_POBCTRL, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %59)
  %61 = call i32 @msleep(i32 50)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %63 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %64 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @WM8400_VREF_ENA, align 4
  %66 = or i32 2, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %70 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %74 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %75 = load i32, i32* @WM8400_SOFTST, align 4
  %76 = load i32, i32* @WM8400_BUFDCOPEN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @WM8400_POBCTRL, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @WM8400_BUFIOEN, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 %74, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %84 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %85 = load i32, i32* @WM8400_BUFIOEN, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %46, %25
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %89 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %90 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %88, i32 %89)
  %91 = load i32, i32* @WM8400_VMID_MODE_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  store i32 %93, i32* %7, align 4
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %95 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 %97)
  br label %189

99:                                               ; preds = %2
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %101 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %102 = load i32, i32* @WM8400_SOFTST, align 4
  %103 = load i32, i32* @WM8400_POBCTRL, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @WM8400_BUFIOEN, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %100, i32 %101, i32 %106)
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %109 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %110 = load i32, i32* @WM8400_SOFTST, align 4
  %111 = load i32, i32* @WM8400_BUFDCOPEN, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @WM8400_POBCTRL, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @WM8400_BUFIOEN, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %108, i32 %109, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %119 = load i32, i32* @WM8400_DAC_CTRL, align 4
  %120 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %122 = load i32, i32* @WM8400_DAC_CTRL, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @WM8400_DAC_MUTE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %121, i32 %122, i32 %125)
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %128 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %129 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* @WM8400_SPK_ENA, align 4
  %131 = load i32, i32* @WM8400_OUT3_ENA, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @WM8400_OUT4_ENA, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @WM8400_LOUT_ENA, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @WM8400_ROUT_ENA, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %142 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %141, i32 %142, i32 %143)
  %145 = load i32, i32* @WM8400_VMID_MODE_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %7, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %150 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %149, i32 %150, i32 %151)
  %153 = call i32 @msleep(i32 300)
  %154 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %155 = load i32, i32* @WM8400_ANTIPOP1, align 4
  %156 = load i32, i32* @WM8400_DIS_LLINE, align 4
  %157 = load i32, i32* @WM8400_DIS_RLINE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @WM8400_DIS_OUT3, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @WM8400_DIS_OUT4, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @WM8400_DIS_LOUT, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @WM8400_DIS_ROUT, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %154, i32 %155, i32 %166)
  %168 = load i32, i32* @WM8400_VREF_ENA, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %173 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %172, i32 %173, i32 %174)
  %176 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %177 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %178 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %176, i32 %177, i32 0)
  %179 = load i32*, i32** @power, align 8
  %180 = call i32 @ARRAY_SIZE(i32* %179)
  %181 = load i32*, i32** @power, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = call i32 @regulator_bulk_disable(i32 %180, i32* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %99
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %3, align 4
  br label %190

188:                                              ; preds = %99
  br label %189

189:                                              ; preds = %2, %188, %87, %13, %12
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %186, %37
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.wm8400_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
