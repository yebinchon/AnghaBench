; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_find_sck.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_find_sck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component*, %struct.device* }
%struct.snd_soc_component = type { i32 }
%struct.device = type { i32 }
%struct.pcm512x_priv = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Impossible to generate a suitable SCK\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sck_rate %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_soc_dai*, i64)* @pcm512x_find_sck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcm512x_find_sck(%struct.snd_soc_dai* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.pcm512x_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.pcm512x_priv* %18, %struct.pcm512x_priv** %8, align 8
  %19 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %20 = call i32 @pcm512x_pll_max(%struct.pcm512x_priv* %19)
  %21 = sub nsw i32 %20, 16000000
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = udiv i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @fls(i32 %25)
  %27 = shl i32 1, %26
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %43, %2
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %33 = call i32 @pcm512x_pll_max(%struct.pcm512x_priv* %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = call i64 @rounddown(i32 %33, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp uge i64 %39, 16000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %28

46:                                               ; preds = %41, %28
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pcm512x_pll_max(%struct.pcm512x_priv*) #1

declare dso_local i64 @rounddown(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
