; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8990.c_wm8990_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8990.c_wm8990_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8990_priv = type { i32 }

@WM8990_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8990_VMID_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@WM8990_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8990_DIS_LLINE = common dso_local global i32 0, align 4
@WM8990_DIS_RLINE = common dso_local global i32 0, align 4
@WM8990_DIS_OUT3 = common dso_local global i32 0, align 4
@WM8990_DIS_OUT4 = common dso_local global i32 0, align 4
@WM8990_DIS_LOUT = common dso_local global i32 0, align 4
@WM8990_DIS_ROUT = common dso_local global i32 0, align 4
@WM8990_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8990_SOFTST = common dso_local global i32 0, align 4
@WM8990_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8990_POBCTRL = common dso_local global i32 0, align 4
@WM8990_VMIDTOG = common dso_local global i32 0, align 4
@WM8990_BUFIOEN = common dso_local global i32 0, align 4
@WM8990_EXT_ACCESS_ENA = common dso_local global i32 0, align 4
@WM8990_EXT_CTL1 = common dso_local global i32 0, align 4
@WM8990_DAC_CTRL = common dso_local global i32 0, align 4
@WM8990_DAC_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8990_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8990_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8990_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8990_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8990_priv* %9, %struct.wm8990_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %170 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %17
    i32 131, label %115
  ]

11:                                               ; preds = %2
  br label %170

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %15 = load i32, i32* @WM8990_VMID_MODE_MASK, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 2)
  br label %170

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %18)
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = load %struct.wm8990_priv*, %struct.wm8990_priv** %6, align 8
  %23 = getelementptr inbounds %struct.wm8990_priv, %struct.wm8990_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regcache_sync(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %171

35:                                               ; preds = %21
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %37 = load i32, i32* @WM8990_ANTIPOP1, align 4
  %38 = load i32, i32* @WM8990_DIS_LLINE, align 4
  %39 = load i32, i32* @WM8990_DIS_RLINE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WM8990_DIS_OUT3, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WM8990_DIS_OUT4, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WM8990_DIS_LOUT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WM8990_DIS_ROUT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %51 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %52 = load i32, i32* @WM8990_SOFTST, align 4
  %53 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WM8990_POBCTRL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WM8990_VMIDTOG, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 %58)
  %60 = call i32 @msleep(i32 300)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %62 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %63 = load i32, i32* @WM8990_SOFTST, align 4
  %64 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WM8990_POBCTRL, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i32 %62, i32 %67)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %70 = load i32, i32* @WM8990_ANTIPOP1, align 4
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 0)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %73 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 6912)
  %75 = call i32 @msleep(i32 50)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %77 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %76, i32 %77, i32 7938)
  %79 = call i32 @msleep(i32 100)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %81 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %80, i32 %81, i32 7939)
  %83 = call i32 @msleep(i32 600)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %85 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %86 = load i32, i32* @WM8990_SOFTST, align 4
  %87 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @WM8990_POBCTRL, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @WM8990_BUFIOEN, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %84, i32 %85, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %95 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 3)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %98 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %99 = load i32, i32* @WM8990_BUFIOEN, align 4
  %100 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %97, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %102 = load i32, i32* @WM8990_EXT_ACCESS_ENA, align 4
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %101, i32 %102, i32 2)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %105 = load i32, i32* @WM8990_EXT_CTL1, align 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 40963)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %108 = load i32, i32* @WM8990_EXT_ACCESS_ENA, align 4
  %109 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %35, %17
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %112 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %113 = load i32, i32* @WM8990_VMID_MODE_MASK, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 4)
  br label %170

115:                                              ; preds = %2
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %117 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %118 = load i32, i32* @WM8990_SOFTST, align 4
  %119 = load i32, i32* @WM8990_POBCTRL, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @WM8990_BUFIOEN, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %116, i32 %117, i32 %122)
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %125 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %126 = load i32, i32* @WM8990_SOFTST, align 4
  %127 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @WM8990_POBCTRL, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @WM8990_BUFIOEN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %124, i32 %125, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %135 = load i32, i32* @WM8990_DAC_CTRL, align 4
  %136 = load i32, i32* @WM8990_DAC_MUTE, align 4
  %137 = load i32, i32* @WM8990_DAC_MUTE, align 4
  %138 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %140 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %141 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %139, i32 %140, i32 7939)
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %143 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %144 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %142, i32 %143, i32 7937)
  %145 = call i32 @msleep(i32 300)
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %147 = load i32, i32* @WM8990_ANTIPOP1, align 4
  %148 = load i32, i32* @WM8990_DIS_LLINE, align 4
  %149 = load i32, i32* @WM8990_DIS_RLINE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @WM8990_DIS_OUT3, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @WM8990_DIS_OUT4, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @WM8990_DIS_LOUT, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @WM8990_DIS_ROUT, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %146, i32 %147, i32 %158)
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %161 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %162 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %160, i32 %161, i32 0)
  %163 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %164 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %165 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %163, i32 %164, i32 0)
  %166 = load %struct.wm8990_priv*, %struct.wm8990_priv** %6, align 8
  %167 = getelementptr inbounds %struct.wm8990_priv, %struct.wm8990_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @regcache_mark_dirty(i32 %168)
  br label %170

170:                                              ; preds = %2, %115, %110, %12, %11
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %28
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.wm8990_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
