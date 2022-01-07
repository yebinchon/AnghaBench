; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32 }

@PCM512x_POWER = common dso_local global i32 0, align 4
@PCM512x_RQST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to remove standby: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to request standby: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @pcm512x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcm512x_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pcm512x_priv* @dev_get_drvdata(i32 %10)
  store %struct.pcm512x_priv* %11, %struct.pcm512x_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %49 [
    i32 130, label %13
    i32 129, label %13
    i32 128, label %14
    i32 131, label %31
  ]

13:                                               ; preds = %2, %2
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %16 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCM512x_POWER, align 4
  %19 = load i32, i32* @PCM512x_RQST, align 4
  %20 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %14
  br label %49

31:                                               ; preds = %2
  %32 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %33 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCM512x_POWER, align 4
  %36 = load i32, i32* @PCM512x_RQST, align 4
  %37 = load i32, i32* @PCM512x_RQST, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %2, %48, %30, %13
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %41, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.pcm512x_priv* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
