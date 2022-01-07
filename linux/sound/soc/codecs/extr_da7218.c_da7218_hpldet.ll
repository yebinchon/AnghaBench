; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_hpldet.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_hpldet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.da7218_priv = type { i64, %struct.snd_soc_jack* }

@DA7217_DEV_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_EN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da7218_hpldet(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca %struct.da7218_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %8 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.da7218_priv* %8, %struct.da7218_priv** %6, align 8
  %9 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %10 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DA7217_DEV_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %19 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %20 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %19, i32 0, i32 1
  store %struct.snd_soc_jack* %18, %struct.snd_soc_jack** %20, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %22 = load i32, i32* @DA7218_HPLDET_JACK, align 4
  %23 = load i32, i32* @DA7218_HPLDET_JACK_EN_MASK, align 4
  %24 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %25 = icmp ne %struct.snd_soc_jack* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @DA7218_HPLDET_JACK_EN_MASK, align 4
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
