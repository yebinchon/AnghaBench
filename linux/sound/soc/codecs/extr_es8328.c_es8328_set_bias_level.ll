; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@ES8328_CHIPPOWER = common dso_local global i32 0, align 4
@ES8328_CONTROL1 = common dso_local global i32 0, align 4
@ES8328_CONTROL1_VMIDSEL_MASK = common dso_local global i32 0, align 4
@ES8328_CONTROL1_ENREF = common dso_local global i32 0, align 4
@ES8328_CONTROL1_VMIDSEL_50k = common dso_local global i32 0, align 4
@ES8328_CONTROL1_VMIDSEL_5k = common dso_local global i32 0, align 4
@ES8328_CONTROL2 = common dso_local global i32 0, align 4
@ES8328_CONTROL2_OVERCURRENT_ON = common dso_local global i32 0, align 4
@ES8328_CONTROL2_THERMAL_SHUTDOWN_ON = common dso_local global i32 0, align 4
@ES8328_CONTROL1_VMIDSEL_500k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @es8328_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %58 [
    i32 130, label %6
    i32 129, label %7
    i32 128, label %20
    i32 131, label %51
  ]

6:                                                ; preds = %2
  br label %58

7:                                                ; preds = %2
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @ES8328_CHIPPOWER, align 4
  %10 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %8, i32 %9, i32 0)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @ES8328_CONTROL1, align 4
  %13 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_MASK, align 4
  %14 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_50k, align 4
  %17 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %15, i32 %18)
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %21)
  %23 = icmp eq i32 %22, 131
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @ES8328_CONTROL1, align 4
  %27 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_MASK, align 4
  %28 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_5k, align 4
  %31 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %29, i32 %32)
  %34 = call i32 @msleep(i32 100)
  br label %35

35:                                               ; preds = %24, %20
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @ES8328_CONTROL2, align 4
  %38 = load i32, i32* @ES8328_CONTROL2_OVERCURRENT_ON, align 4
  %39 = load i32, i32* @ES8328_CONTROL2_THERMAL_SHUTDOWN_ON, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @ES8328_CONTROL1, align 4
  %44 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_MASK, align 4
  %45 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_500k, align 4
  %48 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %46, i32 %49)
  br label %58

51:                                               ; preds = %2
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @ES8328_CONTROL1, align 4
  %54 = load i32, i32* @ES8328_CONTROL1_VMIDSEL_MASK, align 4
  %55 = load i32, i32* @ES8328_CONTROL1_ENREF, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %2, %51, %35, %7, %6
  ret i32 0
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
