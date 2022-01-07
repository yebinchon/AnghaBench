; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8961_ANTI_POP = common dso_local global i32 0, align 4
@WM8961_BUFIOEN = common dso_local global i32 0, align 4
@WM8961_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8961_PWR_MGMT_1 = common dso_local global i32 0, align 4
@WM8961_VMIDSEL_MASK = common dso_local global i32 0, align 4
@WM8961_VMIDSEL_SHIFT = common dso_local global i32 0, align 4
@WM8961_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8961_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %85 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %43
    i32 131, label %84
  ]

7:                                                ; preds = %2
  br label %85

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %9)
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @WM8961_ANTI_POP, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @WM8961_BUFIOEN, align 4
  %17 = load i32, i32* @WM8961_BUFDCOPEN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @WM8961_ANTI_POP, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @WM8961_VMIDSEL_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @WM8961_VMIDSEL_SHIFT, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @WM8961_VREF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %12, %8
  br label %85

43:                                               ; preds = %2
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %44)
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @WM8961_VREF, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 %57)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i32, i32* @WM8961_ANTI_POP, align 4
  %61 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @WM8961_BUFIOEN, align 4
  %63 = load i32, i32* @WM8961_BUFDCOPEN, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = load i32, i32* @WM8961_ANTI_POP, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %74 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @WM8961_VMIDSEL_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %47, %43
  br label %85

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %2, %84, %83, %42, %7
  ret i32 0
}

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
