; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_enable_push_button_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_enable_push_button_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32 }

@RT5663_IL_CMD_6 = common dso_local global i32 0, align 4
@RT5663_EN_4BTN_INL_MASK = common dso_local global i32 0, align 4
@RT5663_EN_4BTN_INL_EN = common dso_local global i32 0, align 4
@RT5663_RESET_4BTN_INL_MASK = common dso_local global i32 0, align 4
@RT5663_RESET_4BTN_INL_RESET = common dso_local global i32 0, align 4
@RT5663_RESET_4BTN_INL_NOR = common dso_local global i32 0, align 4
@RT5663_IRQ_3 = common dso_local global i32 0, align 4
@RT5663_V2_EN_IRQ_INLINE_MASK = common dso_local global i32 0, align 4
@RT5663_V2_EN_IRQ_INLINE_NOR = common dso_local global i32 0, align 4
@RT5663_IRQ_2 = common dso_local global i32 0, align 4
@RT5663_EN_IRQ_INLINE_MASK = common dso_local global i32 0, align 4
@RT5663_EN_IRQ_INLINE_NOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown CODEC Version\0A\00", align 1
@RT5663_V2_EN_IRQ_INLINE_BYP = common dso_local global i32 0, align 4
@RT5663_EN_IRQ_INLINE_BYP = common dso_local global i32 0, align 4
@RT5663_EN_4BTN_INL_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @rt5663_enable_push_button_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5663_enable_push_button_irq(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5663_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5663_priv* %7, %struct.rt5663_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @RT5663_IL_CMD_6, align 4
  %13 = load i32, i32* @RT5663_EN_4BTN_INL_MASK, align 4
  %14 = load i32, i32* @RT5663_EN_4BTN_INL_EN, align 4
  %15 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @RT5663_IL_CMD_6, align 4
  %18 = load i32, i32* @RT5663_RESET_4BTN_INL_MASK, align 4
  %19 = load i32, i32* @RT5663_RESET_4BTN_INL_RESET, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @RT5663_IL_CMD_6, align 4
  %23 = load i32, i32* @RT5663_RESET_4BTN_INL_MASK, align 4
  %24 = load i32, i32* @RT5663_RESET_4BTN_INL_NOR, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.rt5663_priv*, %struct.rt5663_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %41 [
    i32 128, label %29
    i32 129, label %35
  ]

29:                                               ; preds = %10
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @RT5663_IRQ_3, align 4
  %32 = load i32, i32* @RT5663_V2_EN_IRQ_INLINE_MASK, align 4
  %33 = load i32, i32* @RT5663_V2_EN_IRQ_INLINE_NOR, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  br label %46

35:                                               ; preds = %10
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @RT5663_IRQ_2, align 4
  %38 = load i32, i32* @RT5663_EN_IRQ_INLINE_MASK, align 4
  %39 = load i32, i32* @RT5663_EN_IRQ_INLINE_NOR, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  br label %46

41:                                               ; preds = %10
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %35, %29
  br label %84

47:                                               ; preds = %2
  %48 = load %struct.rt5663_priv*, %struct.rt5663_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %63 [
    i32 128, label %51
    i32 129, label %57
  ]

51:                                               ; preds = %47
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @RT5663_IRQ_3, align 4
  %54 = load i32, i32* @RT5663_V2_EN_IRQ_INLINE_MASK, align 4
  %55 = load i32, i32* @RT5663_V2_EN_IRQ_INLINE_BYP, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %55)
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @RT5663_IRQ_2, align 4
  %60 = load i32, i32* @RT5663_EN_IRQ_INLINE_MASK, align 4
  %61 = load i32, i32* @RT5663_EN_IRQ_INLINE_BYP, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  br label %68

63:                                               ; preds = %47
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %57, %51
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %70 = load i32, i32* @RT5663_IL_CMD_6, align 4
  %71 = load i32, i32* @RT5663_EN_4BTN_INL_MASK, align 4
  %72 = load i32, i32* @RT5663_EN_4BTN_INL_DIS, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %75 = load i32, i32* @RT5663_IL_CMD_6, align 4
  %76 = load i32, i32* @RT5663_RESET_4BTN_INL_MASK, align 4
  %77 = load i32, i32* @RT5663_RESET_4BTN_INL_RESET, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = load i32, i32* @RT5663_IL_CMD_6, align 4
  %81 = load i32, i32* @RT5663_RESET_4BTN_INL_MASK, align 4
  %82 = load i32, i32* @RT5663_RESET_4BTN_INL_NOR, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %68, %46
  ret void
}

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
