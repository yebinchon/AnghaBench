; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_pllin_dac_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_pllin_dac_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_soc_dai*, i64, i64)* @pcm512x_pllin_dac_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcm512x_pllin_dac_rate(%struct.snd_soc_dai* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.pcm512x_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.pcm512x_priv* %15, %struct.pcm512x_priv** %9, align 8
  %16 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %17 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %57

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = urem i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %57

27:                                               ; preds = %21
  %28 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %29 = call i32 @pcm512x_dac_max(%struct.pcm512x_priv* %28, i32 6144000)
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @rounddown(i32 %29, i64 %30)
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %52, %27
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = udiv i64 %36, %37
  %39 = icmp ugt i64 %38, 128
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %57

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = urem i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %4, align 8
  br label %57

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %10, align 8
  br label %32

56:                                               ; preds = %32
  store i64 0, i64* %4, align 8
  br label %57

57:                                               ; preds = %56, %46, %40, %26, %20
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @rounddown(i32, i64) #1

declare dso_local i32 @pcm512x_dac_max(%struct.pcm512x_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
