; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_cx20442_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_cx20442_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cx20442_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cx20442_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx20442_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx20442_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.cx20442_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.cx20442_priv* %8, %struct.cx20442_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %54 [
    i32 129, label %10
    i32 128, label %32
  ]

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %11)
  %13 = icmp ne i32 %12, 128
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %55

15:                                               ; preds = %10
  %16 = load %struct.cx20442_priv*, %struct.cx20442_priv** %5, align 8
  %17 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.cx20442_priv*, %struct.cx20442_priv** %5, align 8
  %23 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.cx20442_priv*, %struct.cx20442_priv** %5, align 8
  %28 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_enable(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %21
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %33)
  %35 = icmp ne i32 %34, 129
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %55

37:                                               ; preds = %32
  %38 = load %struct.cx20442_priv*, %struct.cx20442_priv** %5, align 8
  %39 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_ERR(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.cx20442_priv*, %struct.cx20442_priv** %5, align 8
  %45 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load %struct.cx20442_priv*, %struct.cx20442_priv** %5, align 8
  %50 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regulator_disable(i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %53, %36, %31, %14
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.cx20442_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
