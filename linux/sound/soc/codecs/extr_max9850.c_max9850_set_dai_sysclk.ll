; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9850.c_max9850_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9850.c_max9850_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max9850_priv = type { i32 }

@MAX9850_CLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @max9850_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9850_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.max9850_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.max9850_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.max9850_priv* %16, %struct.max9850_priv** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ule i32 %17, 13000000
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %21 = load i32, i32* @MAX9850_CLOCK, align 4
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 0)
  br label %42

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ule i32 %24, 26000000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %28 = load i32, i32* @MAX9850_CLOCK, align 4
  %29 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %27, i32 %28, i32 4)
  br label %41

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 40000000
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %35 = load i32, i32* @MAX9850_CLOCK, align 4
  %36 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 8)
  br label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.max9850_priv*, %struct.max9850_priv** %11, align 8
  %45 = getelementptr inbounds %struct.max9850_priv, %struct.max9850_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.max9850_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
