; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8750.c_wm8750_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8750.c_wm8750_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8750_PWR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8750_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8750_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = load i32, i32* @WM8750_PWR1, align 4
  %8 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %6, i32 %7)
  %9 = and i32 %8, 65086
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %41 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %18
    i32 131, label %37
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @WM8750_PWR1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 192
  %16 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %12, i32 %13, i32 %15)
  br label %41

17:                                               ; preds = %2
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %19)
  %21 = icmp eq i32 %20, 131
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = call i32 @snd_soc_component_cache_sync(%struct.snd_soc_component* %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @WM8750_PWR1, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 449
  %29 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 %28)
  %30 = call i32 @msleep(i32 1000)
  br label %31

31:                                               ; preds = %22, %18
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @WM8750_PWR1, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 321
  %36 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %32, i32 %33, i32 %35)
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @WM8750_PWR1, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %2, %37, %31, %17, %11
  ret i32 0
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_cache_sync(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
