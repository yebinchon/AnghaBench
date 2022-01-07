; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sta32x_priv = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @sta32x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta32x_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.sta32x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.sta32x_priv* %5, %struct.sta32x_priv** %3, align 8
  %6 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %7 = call i32 @sta32x_watchdog_stop(%struct.sta32x_priv* %6)
  %8 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @regulator_bulk_disable(i32 %11, i32 %14)
  %16 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %17 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @clk_disable_unprepare(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sta32x_watchdog_stop(%struct.sta32x_priv*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
