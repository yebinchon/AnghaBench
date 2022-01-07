; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_onebit_depop_power_stage.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_onebit_depop_power_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT5631_DEPOP_FUN_CTRL_2 = common dso_local global i32 0, align 4
@RT5631_EN_ONE_BIT_DEPOP = common dso_local global i32 0, align 4
@RT5631_SOFT_VOL_CTRL = common dso_local global i32 0, align 4
@RT5631_INT_ST_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5631_TEST_MODE_CTRL = common dso_local global i32 0, align 4
@RT5631_SPK_INTL_CTRL = common dso_local global i32 0, align 4
@RT5631_CP_INTL_REG2 = common dso_local global i32 0, align 4
@RT5631_EN_CAP_FREE_DEPOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @onebit_depop_power_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onebit_depop_power_stage(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = load i32, i32* @RT5631_DEPOP_FUN_CTRL_2, align 4
  %9 = load i32, i32* @RT5631_EN_ONE_BIT_DEPOP, align 4
  %10 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @RT5631_SOFT_VOL_CTRL, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @RT5631_SOFT_VOL_CTRL, align 4
  %16 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %14, i32 %15, i32 0)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 63487
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load i32, i32* @RT5631_TEST_MODE_CTRL, align 4
  %30 = call i32 @rt5631_write_index(%struct.snd_soc_component* %28, i32 %29, i32 33984)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @RT5631_SPK_INTL_CTRL, align 4
  %33 = call i32 @rt5631_write_index(%struct.snd_soc_component* %31, i32 %32, i32 12447)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @RT5631_CP_INTL_REG2, align 4
  %36 = call i32 @rt5631_write_index(%struct.snd_soc_component* %34, i32 %35, i32 25904)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @RT5631_DEPOP_FUN_CTRL_2, align 4
  %39 = load i32, i32* @RT5631_EN_CAP_FREE_DEPOP, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %37, i32 %38, i32 %39)
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @RT5631_DEPOP_FUN_CTRL_2, align 4
  %44 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i32 0)
  %45 = call i32 @msleep(i32 100)
  br label %46

46:                                               ; preds = %41, %27
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32, i32* @RT5631_SOFT_VOL_CTRL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @rt5631_write_index(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
