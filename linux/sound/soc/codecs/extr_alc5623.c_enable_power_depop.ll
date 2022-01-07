; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_enable_power_depop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_enable_power_depop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.alc5623_priv = type { i32 }

@ALC5623_PWR_MANAG_ADD1 = common dso_local global i32 0, align 4
@ALC5623_PWR_ADD1_SOFTGEN_EN = common dso_local global i32 0, align 4
@ALC5623_PWR_MANAG_ADD3 = common dso_local global i32 0, align 4
@ALC5623_ADD3_POWER_EN = common dso_local global i32 0, align 4
@ALC5623_MISC_CTRL = common dso_local global i32 0, align 4
@ALC5623_MISC_HP_DEPOP_MODE2_EN = common dso_local global i32 0, align 4
@ALC5623_PWR_MANAG_ADD2 = common dso_local global i32 0, align 4
@ALC5623_ADD2_POWER_EN = common dso_local global i32 0, align 4
@ALC5623_ADD1_POWER_EN_5622 = common dso_local global i32 0, align 4
@ALC5623_ADD1_POWER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @enable_power_depop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_power_depop(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.alc5623_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.alc5623_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.alc5623_priv* %5, %struct.alc5623_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @ALC5623_PWR_MANAG_ADD1, align 4
  %8 = load i32, i32* @ALC5623_PWR_ADD1_SOFTGEN_EN, align 4
  %9 = load i32, i32* @ALC5623_PWR_ADD1_SOFTGEN_EN, align 4
  %10 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @ALC5623_PWR_MANAG_ADD3, align 4
  %13 = load i32, i32* @ALC5623_ADD3_POWER_EN, align 4
  %14 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @ALC5623_MISC_CTRL, align 4
  %17 = load i32, i32* @ALC5623_MISC_HP_DEPOP_MODE2_EN, align 4
  %18 = load i32, i32* @ALC5623_MISC_HP_DEPOP_MODE2_EN, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = call i32 @msleep(i32 500)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @ALC5623_PWR_MANAG_ADD2, align 4
  %23 = load i32, i32* @ALC5623_ADD2_POWER_EN, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %23)
  %25 = load %struct.alc5623_priv*, %struct.alc5623_priv** %3, align 8
  %26 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = load i32, i32* @ALC5623_PWR_MANAG_ADD1, align 4
  %32 = load i32, i32* @ALC5623_ADD1_POWER_EN_5622, align 4
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @ALC5623_PWR_MANAG_ADD1, align 4
  %37 = load i32, i32* @ALC5623_ADD1_POWER_EN, align 4
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = load i32, i32* @ALC5623_MISC_CTRL, align 4
  %42 = load i32, i32* @ALC5623_MISC_HP_DEPOP_MODE2_EN, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 0)
  ret void
}

declare dso_local %struct.alc5623_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
