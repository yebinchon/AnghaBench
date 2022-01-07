; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_enable_push_button_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_enable_push_button_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT5665_4BTN_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5665_SAR_IL_CMD_9 = common dso_local global i32 0, align 4
@RT5665_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_CMD_2 = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_MASK = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_RST_MASK = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_EN = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_NOR = common dso_local global i32 0, align 4
@RT5665_IRQ_CTRL_3 = common dso_local global i32 0, align 4
@RT5665_IL_IRQ_MASK = common dso_local global i32 0, align 4
@RT5665_IL_IRQ_EN = common dso_local global i32 0, align 4
@RT5665_IL_IRQ_DIS = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_DIS = common dso_local global i32 0, align 4
@RT5665_4BTN_IL_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @rt5665_enable_push_button_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5665_enable_push_button_irq(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @RT5665_4BTN_IL_CMD_1, align 4
  %10 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %8, i32 %9, i32 3)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @RT5665_SAR_IL_CMD_9, align 4
  %13 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 1, i32 1)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @RT5665_IL_CMD_1, align 4
  %16 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %14, i32 %15, i32 72)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @RT5665_4BTN_IL_CMD_2, align 4
  %19 = load i32, i32* @RT5665_4BTN_IL_MASK, align 4
  %20 = load i32, i32* @RT5665_4BTN_IL_RST_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RT5665_4BTN_IL_EN, align 4
  %23 = load i32, i32* @RT5665_4BTN_IL_NOR, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @RT5665_IRQ_CTRL_3, align 4
  %28 = load i32, i32* @RT5665_IL_IRQ_MASK, align 4
  %29 = load i32, i32* @RT5665_IL_IRQ_EN, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  br label %47

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @RT5665_IRQ_CTRL_3, align 4
  %34 = load i32, i32* @RT5665_IL_IRQ_MASK, align 4
  %35 = load i32, i32* @RT5665_IL_IRQ_DIS, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @RT5665_4BTN_IL_CMD_2, align 4
  %39 = load i32, i32* @RT5665_4BTN_IL_MASK, align 4
  %40 = load i32, i32* @RT5665_4BTN_IL_DIS, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @RT5665_4BTN_IL_CMD_2, align 4
  %44 = load i32, i32* @RT5665_4BTN_IL_RST_MASK, align 4
  %45 = load i32, i32* @RT5665_4BTN_IL_RST, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
