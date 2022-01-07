; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm0010_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm0010_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm0010_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm0010_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm0010_priv* %7, %struct.wm0010_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %33 [
    i32 130, label %9
    i32 129, label %17
    i32 128, label %18
    i32 131, label %32
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %10)
  %12 = icmp eq i32 %11, 129
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call i32 @wm0010_boot(%struct.snd_soc_component* %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %33

17:                                               ; preds = %2
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %19)
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = call i32 @wm0010_halt(%struct.snd_soc_component* %26)
  %28 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %29 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %22, %18
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %2, %32, %31, %17, %16
  ret i32 0
}

declare dso_local %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @wm0010_boot(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm0010_halt(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
