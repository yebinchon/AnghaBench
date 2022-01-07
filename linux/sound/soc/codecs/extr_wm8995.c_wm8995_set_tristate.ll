; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_tristate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_tristate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8995_AIF1_MASTER_SLAVE = common dso_local global i32 0, align 4
@WM8995_AIF1_TRI = common dso_local global i32 0, align 4
@WM8995_AIF2_MASTER_SLAVE = common dso_local global i32 0, align 4
@WM8995_AIF2_TRI = common dso_local global i32 0, align 4
@WM8995_POWER_MANAGEMENT_5 = common dso_local global i32 0, align 4
@WM8995_AIF3_TRI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8995_set_tristate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_set_tristate(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %25 [
    i32 0, label %16
    i32 1, label %19
    i32 2, label %22
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @WM8995_AIF1_MASTER_SLAVE, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @WM8995_AIF1_TRI, align 4
  store i32 %18, i32* %9, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @WM8995_AIF2_MASTER_SLAVE, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @WM8995_AIF2_TRI, align 4
  store i32 %21, i32* %9, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @WM8995_POWER_MANAGEMENT_5, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @WM8995_AIF3_TRI, align 4
  store i32 %24, i32* %9, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %22, %19, %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %8, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
