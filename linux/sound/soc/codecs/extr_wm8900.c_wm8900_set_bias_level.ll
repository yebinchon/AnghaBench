; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8900_REG_GPIO = common dso_local global i32 0, align 4
@WM8900_REG_GPIO_TEMP_ENA = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL_TEMP_SD = common dso_local global i32 0, align 4
@WM8900_REG_POWER1 = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL_BIAS_SRC = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL_VMID_SOFTST = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_BIAS_ENA = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_FLL_ENA = common dso_local global i32 0, align 4
@WM8900_REG_POWER2 = common dso_local global i32 0, align 4
@WM8900_REG_POWER2_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8900_REG_POWER3 = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8900_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %119 [
    i32 130, label %7
    i32 129, label %18
    i32 128, label %19
    i32 131, label %76
  ]

7:                                                ; preds = %2
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @WM8900_REG_GPIO, align 4
  %10 = load i32, i32* @WM8900_REG_GPIO_TEMP_ENA, align 4
  %11 = load i32, i32* @WM8900_REG_GPIO_TEMP_ENA, align 4
  %12 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %15 = load i32, i32* @WM8900_REG_ADDCTL_TEMP_SD, align 4
  %16 = load i32, i32* @WM8900_REG_ADDCTL_TEMP_SD, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  br label %119

18:                                               ; preds = %2
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %20)
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @WM8900_REG_POWER1, align 4
  %26 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %27 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %24, i32 %25, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %30 = load i32, i32* @WM8900_REG_ADDCTL_BIAS_SRC, align 4
  %31 = load i32, i32* @WM8900_REG_ADDCTL_VMID_SOFTST, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %28, i32 %29, i32 %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @WM8900_REG_POWER1, align 4
  %36 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %37 = or i32 %36, 1
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %37)
  %39 = call i32 @msecs_to_jiffies(i32 400)
  %40 = call i32 @schedule_timeout_interruptible(i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @WM8900_REG_POWER1, align 4
  %43 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %44 = load i32, i32* @WM8900_REG_POWER1_BIAS_ENA, align 4
  %45 = or i32 %43, %44
  %46 = or i32 %45, 1
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %48, i32 %49, i32 0)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i32, i32* @WM8900_REG_POWER1, align 4
  %53 = load i32, i32* @WM8900_REG_POWER1_BIAS_ENA, align 4
  %54 = or i32 %53, 1
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %23, %19
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32, i32* @WM8900_REG_POWER1, align 4
  %59 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = load i32, i32* @WM8900_REG_POWER1, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @WM8900_REG_POWER1_BIAS_ENA, align 4
  %66 = or i32 %64, %65
  %67 = or i32 %66, 1
  %68 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %60, i32 %61, i32 %67)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %70 = load i32, i32* @WM8900_REG_POWER2, align 4
  %71 = load i32, i32* @WM8900_REG_POWER2_SYSCLK_ENA, align 4
  %72 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %74 = load i32, i32* @WM8900_REG_POWER3, align 4
  %75 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 %74, i32 0)
  br label %119

76:                                               ; preds = %2
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = load i32, i32* @WM8900_REG_POWER1, align 4
  %79 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @WM8900_REG_POWER1, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %80, i32 %81, i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %87 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %88 = load i32, i32* @WM8900_REG_ADDCTL_BIAS_SRC, align 4
  %89 = load i32, i32* @WM8900_REG_ADDCTL_VMID_SOFTST, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %86, i32 %87, i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %93 = load i32, i32* @WM8900_REG_POWER1, align 4
  %94 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %95 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %92, i32 %93, i32 %94)
  %96 = call i32 @msecs_to_jiffies(i32 500)
  %97 = call i32 @schedule_timeout_interruptible(i32 %96)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %100 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %98, i32 %99, i32 0)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %102 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %101, i32 %102, i32 0)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %105 = load i32, i32* @WM8900_REG_POWER1, align 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 0)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %108 = load i32, i32* @WM8900_REG_POWER2, align 4
  %109 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %107, i32 %108, i32 0)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %111 = load i32, i32* @WM8900_REG_POWER3, align 4
  %112 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %110, i32 %111, i32 0)
  %113 = call i32 @msecs_to_jiffies(i32 1)
  %114 = call i32 @schedule_timeout_interruptible(i32 %113)
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %116 = load i32, i32* @WM8900_REG_POWER2, align 4
  %117 = load i32, i32* @WM8900_REG_POWER2_SYSCLK_ENA, align 4
  %118 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %2, %76, %56, %18, %7
  ret i32 0
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
