; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1681.c_pcm1681_set_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1681.c_pcm1681_set_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.pcm1681_private = type { i64, i32, i64 }

@pcm1681_deemph = common dso_local global i64* null, align 8
@PCM1681_DEEMPH_CONTROL = common dso_local global i32 0, align 4
@PCM1681_DEEMPH_RATE_MASK = common dso_local global i32 0, align 4
@PCM1681_DEEMPH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @pcm1681_set_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm1681_set_deemph(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.pcm1681_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.pcm1681_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.pcm1681_private* %8, %struct.pcm1681_private** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.pcm1681_private*, %struct.pcm1681_private** %3, align 8
  %10 = getelementptr inbounds %struct.pcm1681_private, %struct.pcm1681_private* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i64*, i64** @pcm1681_deemph, align 8
  %17 = call i32 @ARRAY_SIZE(i64* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i64*, i64** @pcm1681_deemph, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pcm1681_private*, %struct.pcm1681_private** %3, align 8
  %26 = getelementptr inbounds %struct.pcm1681_private, %struct.pcm1681_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %29, %14
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.pcm1681_private*, %struct.pcm1681_private** %3, align 8
  %41 = getelementptr inbounds %struct.pcm1681_private, %struct.pcm1681_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCM1681_DEEMPH_CONTROL, align 4
  %44 = load i32, i32* @PCM1681_DEEMPH_RATE_MASK, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 3
  %47 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %46)
  store i32 1, i32* %6, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load %struct.pcm1681_private*, %struct.pcm1681_private** %3, align 8
  %51 = getelementptr inbounds %struct.pcm1681_private, %struct.pcm1681_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PCM1681_DEEMPH_CONTROL, align 4
  %54 = load i32, i32* @PCM1681_DEEMPH_MASK, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  ret i32 %56
}

declare dso_local %struct.pcm1681_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
