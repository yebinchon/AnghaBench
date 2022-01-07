; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uda1380_platform_data* }
%struct.uda1380_platform_data = type { i32, i32 }
%struct.uda1380_priv = type { i32, %struct.snd_soc_component* }

@uda1380_flush_work = common dso_local global i32 0, align 4
@UDA1380_CLK = common dso_local global i32 0, align 4
@R00_DAC_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @uda1380_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.uda1380_platform_data*, align 8
  %5 = alloca %struct.uda1380_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %10, align 8
  store %struct.uda1380_platform_data* %11, %struct.uda1380_platform_data** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.uda1380_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.uda1380_priv* %13, %struct.uda1380_priv** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.uda1380_priv*, %struct.uda1380_priv** %5, align 8
  %16 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %15, i32 0, i32 1
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %16, align 8
  %17 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpio_is_valid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = call i32 @uda1380_reset(%struct.snd_soc_component* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.uda1380_priv*, %struct.uda1380_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %31, i32 0, i32 0
  %33 = load i32, i32* @uda1380_flush_work, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  %35 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %4, align 8
  %36 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %47 [
    i32 129, label %38
    i32 128, label %42
  ]

38:                                               ; preds = %30
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load i32, i32* @UDA1380_CLK, align 4
  %41 = call i32 @uda1380_write_reg_cache(%struct.snd_soc_component* %39, i32 %40, i32 0)
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @UDA1380_CLK, align 4
  %45 = load i32, i32* @R00_DAC_CLK, align 4
  %46 = call i32 @uda1380_write_reg_cache(%struct.snd_soc_component* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %30, %42, %38
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.uda1380_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @uda1380_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @uda1380_write_reg_cache(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
