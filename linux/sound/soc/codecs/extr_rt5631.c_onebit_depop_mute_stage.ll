; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_onebit_depop_mute_stage.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_onebit_depop_mute_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT5631_DEPOP_FUN_CTRL_2 = common dso_local global i32 0, align 4
@RT5631_EN_ONE_BIT_DEPOP = common dso_local global i32 0, align 4
@RT5631_SOFT_VOL_CTRL = common dso_local global i32 0, align 4
@RT5631_INT_ST_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5631_SPK_INTL_CTRL = common dso_local global i32 0, align 4
@RT5631_HP_OUT_VOL = common dso_local global i32 0, align 4
@RT5631_L_MUTE = common dso_local global i32 0, align 4
@RT5631_R_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @onebit_depop_mute_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onebit_depop_mute_stage(%struct.snd_soc_component* %0, i32 %1) #0 {
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
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = call i32 @msecs_to_jiffies(i32 10)
  %29 = call i32 @schedule_timeout_uninterruptible(i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @RT5631_SPK_INTL_CTRL, align 4
  %32 = call i32 @rt5631_write_index(%struct.snd_soc_component* %30, i32 %31, i32 12415)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @RT5631_HP_OUT_VOL, align 4
  %35 = load i32, i32* @RT5631_L_MUTE, align 4
  %36 = load i32, i32* @RT5631_R_MUTE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %37, i32 0)
  %39 = call i32 @msleep(i32 300)
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @RT5631_HP_OUT_VOL, align 4
  %43 = load i32, i32* @RT5631_L_MUTE, align 4
  %44 = load i32, i32* @RT5631_R_MUTE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RT5631_L_MUTE, align 4
  %47 = load i32, i32* @RT5631_R_MUTE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %45, i32 %48)
  %50 = call i32 @msleep(i32 100)
  br label %51

51:                                               ; preds = %40, %27
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @RT5631_SOFT_VOL_CTRL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %52, i32 %53, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rt5631_write_index(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
