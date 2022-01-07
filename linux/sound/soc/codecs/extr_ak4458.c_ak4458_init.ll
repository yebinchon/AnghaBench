; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ak4458_priv = type { i64 }

@AK4458_00_CONTROL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ak4458_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4458_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.ak4458_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ak4458_priv* %7, %struct.ak4458_priv** %4, align 8
  %8 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @gpiod_set_value_cansleep(i64 %15, i32 1)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %19 = call i32 @ak4458_power_on(%struct.ak4458_priv* %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @AK4458_00_CONTROL1, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 128, i32 128)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = call i32 @ak4458_rstn_control(%struct.snd_soc_component* %28, i32 1)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @ak4458_power_on(%struct.ak4458_priv*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ak4458_rstn_control(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
