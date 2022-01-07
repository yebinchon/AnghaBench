; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8900_REG_HPCTL1 = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_CLAMP_IP = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_CLAMP_OP = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_SHORT = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_SHORT2 = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_IPSTAGE_ENA = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_OPSTAGE_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8900_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %102 [
    i32 128, label %17
    i32 130, label %25
    i32 129, label %69
    i32 131, label %98
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_IP, align 4
  %19 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_OP, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %23)
  br label %105

25:                                               ; preds = %3
  %26 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_IP, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT, align 4
  %31 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM8900_REG_HPCTL1_HP_IPSTAGE_ENA, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %38 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %37, i32 %38, i32 %39)
  %41 = call i32 @msleep(i32 400)
  %42 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_OP, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @WM8900_REG_HPCTL1_HP_OPSTAGE_ENA, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %50 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT2, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %66 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 %67)
  br label %105

69:                                               ; preds = %3
  %70 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %74 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @WM8900_REG_HPCTL1_HP_OPSTAGE_ENA, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %82 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_IP, align 4
  %86 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_OP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @WM8900_REG_HPCTL1_HP_IPSTAGE_ENA, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %95 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 %96)
  br label %105

98:                                               ; preds = %3
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %100 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %101 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i32 0)
  br label %105

102:                                              ; preds = %3
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %98, %69, %25, %17
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
