; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_limit_channels_and_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_limit_channels_and_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32**, i32** }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware }
%struct.snd_pcm_hardware = type { i64, i32, i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@snd_dice_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, %struct.snd_pcm_runtime*, i32, i32)* @limit_channels_and_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_channels_and_rates(%struct.snd_dice* %0, %struct.snd_pcm_runtime* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_dice*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_hardware*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  store %struct.snd_pcm_hardware* %16, %struct.snd_pcm_hardware** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %22 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  br label %36

28:                                               ; preds = %4
  %29 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %30 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  br label %36

36:                                               ; preds = %28, %20
  %37 = load i32, i32* @UINT_MAX, align 4
  %38 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %88, %36
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** @snd_dice_rates, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %42
  %48 = load i32*, i32** @snd_dice_rates, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.snd_dice*, %struct.snd_dice** %5, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @snd_dice_stream_get_rate_mode(%struct.snd_dice* %53, i32 %54, i32* %12)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %88

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @snd_pcm_rate_to_rate_bit(i32 %59)
  %61 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %88

73:                                               ; preds = %58
  %74 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  %79 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @max(i64 %83, i32 %84)
  %86 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %73, %72, %57
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %42

91:                                               ; preds = %42
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %93 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %92)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @snd_dice_stream_get_rate_mode(%struct.snd_dice*, i32, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
