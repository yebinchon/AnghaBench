; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_charge_pump.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_charge_pump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA732X_REG_CLK_EN2 = common dso_local global i32 0, align 4
@DA732X_CP_CLK_EN = common dso_local global i32 0, align 4
@DA732X_REG_CP_HP2 = common dso_local global i32 0, align 4
@DA732X_HP_CP_EN = common dso_local global i32 0, align 4
@DA732X_HP_CP_REG = common dso_local global i32 0, align 4
@DA732X_HP_CP_PULSESKIP = common dso_local global i32 0, align 4
@DA732X_REG_CP_CTRL1 = common dso_local global i32 0, align 4
@DA732X_CP_EN = common dso_local global i32 0, align 4
@DA732X_CP_CTRL_CPVDD1 = common dso_local global i32 0, align 4
@DA732X_REG_CP_CTRL2 = common dso_local global i32 0, align 4
@DA732X_CP_MANAGE_MAGNITUDE = common dso_local global i32 0, align 4
@DA732X_CP_BOOST = common dso_local global i32 0, align 4
@DA732X_REG_CP_CTRL3 = common dso_local global i32 0, align 4
@DA732X_CP_1MHZ = common dso_local global i32 0, align 4
@DA732X_CP_CLK_DIS = common dso_local global i32 0, align 4
@DA732X_HP_CP_DIS = common dso_local global i32 0, align 4
@DA723X_CP_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Wrong charge pump state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @da732x_set_charge_pump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da732x_set_charge_pump(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %48 [
    i32 128, label %6
    i32 129, label %35
  ]

6:                                                ; preds = %2
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = load i32, i32* @DA732X_REG_CLK_EN2, align 4
  %9 = load i32, i32* @DA732X_CP_CLK_EN, align 4
  %10 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %7, i32 %8, i32 %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @DA732X_REG_CP_HP2, align 4
  %13 = load i32, i32* @DA732X_HP_CP_EN, align 4
  %14 = load i32, i32* @DA732X_HP_CP_REG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DA732X_HP_CP_PULSESKIP, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %11, i32 %12, i32 %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @DA732X_REG_CP_CTRL1, align 4
  %21 = load i32, i32* @DA732X_CP_EN, align 4
  %22 = load i32, i32* @DA732X_CP_CTRL_CPVDD1, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %19, i32 %20, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @DA732X_REG_CP_CTRL2, align 4
  %27 = load i32, i32* @DA732X_CP_MANAGE_MAGNITUDE, align 4
  %28 = load i32, i32* @DA732X_CP_BOOST, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @DA732X_REG_CP_CTRL3, align 4
  %33 = load i32, i32* @DA732X_CP_1MHZ, align 4
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %31, i32 %32, i32 %33)
  br label %50

35:                                               ; preds = %2
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @DA732X_REG_CLK_EN2, align 4
  %38 = load i32, i32* @DA732X_CP_CLK_DIS, align 4
  %39 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @DA732X_REG_CP_HP2, align 4
  %42 = load i32, i32* @DA732X_HP_CP_DIS, align 4
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i32 %41, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = load i32, i32* @DA732X_REG_CP_CTRL1, align 4
  %46 = load i32, i32* @DA723X_CP_DIS, align 4
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %46)
  br label %50

48:                                               ; preds = %2
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %35, %6
  ret void
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
