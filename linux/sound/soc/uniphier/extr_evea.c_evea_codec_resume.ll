; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_codec_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_codec_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.evea_priv = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @evea_codec_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evea_codec_resume(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.evea_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.evea_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.evea_priv* %7, %struct.evea_priv** %4, align 8
  %8 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %9 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %18 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %68

24:                                               ; preds = %16
  %25 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %26 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reset_control_deassert(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %63

32:                                               ; preds = %24
  %33 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %34 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @reset_control_deassert(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %58

40:                                               ; preds = %32
  %41 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %42 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @reset_control_deassert(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %50 = call i32 @evea_set_power_state_on(%struct.evea_priv* %49)
  %51 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %52 = call i32 @evea_update_switch_all(%struct.evea_priv* %51)
  store i32 0, i32* %2, align 4
  br label %74

53:                                               ; preds = %47
  %54 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %55 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @reset_control_assert(i32 %56)
  br label %58

58:                                               ; preds = %53, %39
  %59 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %60 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @reset_control_assert(i32 %61)
  br label %63

63:                                               ; preds = %58, %31
  %64 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %65 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  br label %68

68:                                               ; preds = %63, %23
  %69 = load %struct.evea_priv*, %struct.evea_priv** %4, align 8
  %70 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable_unprepare(i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %48, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.evea_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @evea_set_power_state_on(%struct.evea_priv*) #1

declare dso_local i32 @evea_update_switch_all(%struct.evea_priv*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
