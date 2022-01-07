; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ml26124.c_ml26124_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ml26124.c_ml26124_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ml26124_priv = type { i32 }

@ML26124_PW_SPAMP_PW_MNG = common dso_local global i32 0, align 4
@ML26124_R26_MASK = common dso_local global i32 0, align 4
@ML26124_BLT_PREAMP_ON = common dso_local global i32 0, align 4
@ML26124_MICBEN_ON = common dso_local global i32 0, align 4
@ML26124_BLT_ALL_ON = common dso_local global i32 0, align 4
@ML26124_PW_REF_PW_MNG = common dso_local global i32 0, align 4
@ML26124_VMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @ml26124_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml26124_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ml26124_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.ml26124_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ml26124_priv* %7, %struct.ml26124_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %45 [
    i32 130, label %9
    i32 129, label %23
    i32 128, label %24
    i32 131, label %40
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @ML26124_PW_SPAMP_PW_MNG, align 4
  %12 = load i32, i32* @ML26124_R26_MASK, align 4
  %13 = load i32, i32* @ML26124_BLT_PREAMP_ON, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 %13)
  %15 = call i32 @msleep(i32 100)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @ML26124_PW_SPAMP_PW_MNG, align 4
  %18 = load i32, i32* @ML26124_R26_MASK, align 4
  %19 = load i32, i32* @ML26124_MICBEN_ON, align 4
  %20 = load i32, i32* @ML26124_BLT_ALL_ON, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %21)
  br label %45

23:                                               ; preds = %2
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %25)
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @ML26124_PW_REF_PW_MNG, align 4
  %31 = load i32, i32* @ML26124_VMID, align 4
  %32 = load i32, i32* @ML26124_VMID, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  %34 = call i32 @msleep(i32 500)
  %35 = load %struct.ml26124_priv*, %struct.ml26124_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regcache_sync(i32 %37)
  br label %39

39:                                               ; preds = %28, %24
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @ML26124_PW_REF_PW_MNG, align 4
  %43 = load i32, i32* @ML26124_VMID, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %2, %40, %39, %23, %9
  ret i32 0
}

declare dso_local %struct.ml26124_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
