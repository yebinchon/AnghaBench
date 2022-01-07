; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta529.c_sta529_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta529.c_sta529_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sta529 = type { i32 }

@STA529_FFXCFG0 = common dso_local global i32 0, align 4
@POWER_CNTLMSAK = common dso_local global i32 0, align 4
@POWER_UP = common dso_local global i32 0, align 4
@STA529_MISC = common dso_local global i32 0, align 4
@FFX_CLK_MSK = common dso_local global i32 0, align 4
@FFX_CLK_ENB = common dso_local global i32 0, align 4
@POWER_STDBY = common dso_local global i32 0, align 4
@FFX_MASK = common dso_local global i32 0, align 4
@FFX_OFF = common dso_local global i32 0, align 4
@FFX_CLK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @sta529_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta529_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sta529*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.sta529* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.sta529* %7, %struct.sta529** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %46 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %20
    i32 131, label %45
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @STA529_FFXCFG0, align 4
  %12 = load i32, i32* @POWER_CNTLMSAK, align 4
  %13 = load i32, i32* @POWER_UP, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @STA529_MISC, align 4
  %17 = load i32, i32* @FFX_CLK_MSK, align 4
  %18 = load i32, i32* @FFX_CLK_ENB, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %21)
  %23 = icmp eq i32 %22, 131
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.sta529*, %struct.sta529** %5, align 8
  %26 = getelementptr inbounds %struct.sta529, %struct.sta529* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regcache_sync(i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @STA529_FFXCFG0, align 4
  %32 = load i32, i32* @POWER_CNTLMSAK, align 4
  %33 = load i32, i32* @POWER_STDBY, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @STA529_FFXCFG0, align 4
  %37 = load i32, i32* @FFX_MASK, align 4
  %38 = load i32, i32* @FFX_OFF, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @STA529_MISC, align 4
  %42 = load i32, i32* @FFX_CLK_MSK, align 4
  %43 = load i32, i32* @FFX_CLK_DIS, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 %43)
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %2, %45, %29, %9
  ret i32 0
}

declare dso_local %struct.sta529* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
