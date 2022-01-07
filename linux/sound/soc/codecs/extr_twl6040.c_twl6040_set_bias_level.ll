; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl6040 = type { i32 }
%struct.twl6040_data = type { i32 }

@TWL6040_SYSCLK_SEL_LPPLL = common dso_local global i32 0, align 4
@TWL6040_REG_GPOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @twl6040_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl6040*, align 8
  %6 = alloca %struct.twl6040_data*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.twl6040* @to_twl6040(%struct.snd_soc_component* %8)
  store %struct.twl6040* %9, %struct.twl6040** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.twl6040_data* %11, %struct.twl6040_data** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %47 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %15
    i32 131, label %36
  ]

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.twl6040_data*, %struct.twl6040_data** %6, align 8
  %17 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %22 = load i32, i32* @TWL6040_SYSCLK_SEL_LPPLL, align 4
  %23 = call i32 @twl6040_set_pll(%struct.twl6040* %21, i32 %22, i32 32768, i32 19200000)
  store i32 %23, i32* %7, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %26 = call i32 @twl6040_power(%struct.twl6040* %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %47

30:                                               ; preds = %24
  %31 = load %struct.twl6040_data*, %struct.twl6040_data** %6, align 8
  %32 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @TWL6040_REG_GPOCTL, align 4
  %35 = call i32 @twl6040_write(%struct.snd_soc_component* %33, i32 %34, i32 2)
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.twl6040_data*, %struct.twl6040_data** %6, align 8
  %38 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  %43 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %44 = call i32 @twl6040_power(%struct.twl6040* %43, i32 0)
  %45 = load %struct.twl6040_data*, %struct.twl6040_data** %6, align 8
  %46 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %2, %42, %41, %30, %29, %20, %14, %13
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.twl6040* @to_twl6040(%struct.snd_soc_component*) #1

declare dso_local %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl6040_set_pll(%struct.twl6040*, i32, i32, i32) #1

declare dso_local i32 @twl6040_power(%struct.twl6040*, i32) #1

declare dso_local i32 @twl6040_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
