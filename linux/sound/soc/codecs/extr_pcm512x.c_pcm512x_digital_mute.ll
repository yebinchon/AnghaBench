; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32, i32, i32 }

@PCM512x_MUTE = common dso_local global i32 0, align 4
@PCM512x_RQML = common dso_local global i32 0, align 4
@PCM512x_RQMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to set digital mute: %d\0A\00", align 1
@PCM512x_ANALOG_MUTE_DET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to update digital mute: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pcm512x_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_digital_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.pcm512x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.pcm512x_priv* %13, %struct.pcm512x_priv** %6, align 8
  %14 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %15 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %21 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %25 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCM512x_MUTE, align 4
  %28 = load i32, i32* @PCM512x_RQML, align 4
  %29 = load i32, i32* @PCM512x_RQMR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PCM512x_RQML, align 4
  %32 = load i32, i32* @PCM512x_RQMR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %87

43:                                               ; preds = %19
  %44 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %45 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PCM512x_ANALOG_MUTE_DET, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @regmap_read_poll_timeout(i32 %46, i32 %47, i32 %48, i32 %52, i32 200, i32 10000)
  br label %86

54:                                               ; preds = %2
  %55 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %56 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -2
  store i32 %58, i32* %56, align 4
  %59 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %60 = call i32 @pcm512x_update_mute(%struct.pcm512x_priv* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %87

69:                                               ; preds = %54
  %70 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %71 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCM512x_ANALOG_MUTE_DET, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 3
  %77 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %78 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = ashr i32 %80, 1
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %76, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @regmap_read_poll_timeout(i32 %72, i32 %73, i32 %74, i32 %84, i32 200, i32 10000)
  br label %86

86:                                               ; preds = %69, %43
  br label %87

87:                                               ; preds = %86, %63, %37
  %88 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %89 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcm512x_update_mute(%struct.pcm512x_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
