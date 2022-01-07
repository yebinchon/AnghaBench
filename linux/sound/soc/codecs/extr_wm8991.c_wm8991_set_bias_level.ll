; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8991_priv = type { i32 }

@WM8991_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8991_VMID_MODE_MASK = common dso_local global i32 0, align 4
@WM8991_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8991_DIS_LLINE = common dso_local global i32 0, align 4
@WM8991_DIS_RLINE = common dso_local global i32 0, align 4
@WM8991_DIS_OUT3 = common dso_local global i32 0, align 4
@WM8991_DIS_OUT4 = common dso_local global i32 0, align 4
@WM8991_DIS_LOUT = common dso_local global i32 0, align 4
@WM8991_DIS_ROUT = common dso_local global i32 0, align 4
@WM8991_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8991_SOFTST = common dso_local global i32 0, align 4
@WM8991_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8991_POBCTRL = common dso_local global i32 0, align 4
@WM8991_VMIDTOG = common dso_local global i32 0, align 4
@WM8991_BUFIOEN = common dso_local global i32 0, align 4
@WM8991_DAC_CTRL = common dso_local global i32 0, align 4
@WM8991_DAC_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8991_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8991_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8991_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm8991_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8991_priv* %8, %struct.wm8991_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %168 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %23
    i32 131, label %109
  ]

10:                                               ; preds = %2
  br label %168

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  %15 = load i32, i32* @WM8991_VMID_MODE_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 2
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %18, i32 %19, i32 %21)
  br label %168

23:                                               ; preds = %2
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %24)
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %27, label %97

27:                                               ; preds = %23
  %28 = load %struct.wm8991_priv*, %struct.wm8991_priv** %5, align 8
  %29 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regcache_sync(i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @WM8991_ANTIPOP1, align 4
  %34 = load i32, i32* @WM8991_DIS_LLINE, align 4
  %35 = load i32, i32* @WM8991_DIS_RLINE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WM8991_DIS_OUT3, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WM8991_DIS_OUT4, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WM8991_DIS_LOUT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WM8991_DIS_ROUT, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %32, i32 %33, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %48 = load i32, i32* @WM8991_SOFTST, align 4
  %49 = load i32, i32* @WM8991_BUFDCOPEN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @WM8991_POBCTRL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WM8991_VMIDTOG, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %46, i32 %47, i32 %54)
  %56 = call i32 @msleep(i32 300)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %59 = load i32, i32* @WM8991_SOFTST, align 4
  %60 = load i32, i32* @WM8991_BUFDCOPEN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @WM8991_POBCTRL, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %66 = load i32, i32* @WM8991_ANTIPOP1, align 4
  %67 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 0)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i32 6912)
  %71 = call i32 @msleep(i32 50)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 7938)
  %75 = call i32 @msleep(i32 100)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %77 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %76, i32 %77, i32 7939)
  %79 = call i32 @msleep(i32 600)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %82 = load i32, i32* @WM8991_SOFTST, align 4
  %83 = load i32, i32* @WM8991_BUFDCOPEN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WM8991_POBCTRL, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WM8991_BUFIOEN, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %80, i32 %81, i32 %88)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %91 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %92 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %90, i32 %91, i32 3)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %95 = load i32, i32* @WM8991_BUFIOEN, align 4
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %27, %23
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %100 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %98, i32 %99)
  %101 = load i32, i32* @WM8991_VMID_MODE_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  store i32 %103, i32* %6, align 4
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %105 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, 4
  %108 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 %107)
  br label %168

109:                                              ; preds = %2
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %111 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %112 = load i32, i32* @WM8991_SOFTST, align 4
  %113 = load i32, i32* @WM8991_POBCTRL, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @WM8991_BUFIOEN, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %110, i32 %111, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %119 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %120 = load i32, i32* @WM8991_SOFTST, align 4
  %121 = load i32, i32* @WM8991_BUFDCOPEN, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @WM8991_POBCTRL, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @WM8991_BUFIOEN, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %118, i32 %119, i32 %126)
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %129 = load i32, i32* @WM8991_DAC_CTRL, align 4
  %130 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %132 = load i32, i32* @WM8991_DAC_CTRL, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @WM8991_DAC_MUTE, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %131, i32 %132, i32 %135)
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %138 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %137, i32 %138, i32 7939)
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %141 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %142 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %140, i32 %141, i32 7937)
  %143 = call i32 @msleep(i32 300)
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %145 = load i32, i32* @WM8991_ANTIPOP1, align 4
  %146 = load i32, i32* @WM8991_DIS_LLINE, align 4
  %147 = load i32, i32* @WM8991_DIS_RLINE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @WM8991_DIS_OUT3, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @WM8991_DIS_OUT4, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @WM8991_DIS_LOUT, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @WM8991_DIS_ROUT, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %144, i32 %145, i32 %156)
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %159 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %160 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %158, i32 %159, i32 0)
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %162 = load i32, i32* @WM8991_ANTIPOP2, align 4
  %163 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %161, i32 %162, i32 0)
  %164 = load %struct.wm8991_priv*, %struct.wm8991_priv** %5, align 8
  %165 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @regcache_mark_dirty(i32 %166)
  br label %168

168:                                              ; preds = %2, %109, %97, %11, %10
  ret i32 0
}

declare dso_local %struct.wm8991_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
