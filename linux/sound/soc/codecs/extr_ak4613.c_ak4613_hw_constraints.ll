; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_hw_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_hw_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4613_priv = type { i32, %struct.snd_pcm_hw_constraint_list }
%struct.snd_pcm_hw_constraint_list = type { i32*, i32, i64 }
%struct.snd_pcm_runtime = type { i32 }

@ak4613_hw_constraints.ak4613_rates = internal constant [8 x i32] [i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], align 16
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4613_priv*, %struct.snd_pcm_runtime*)* @ak4613_hw_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4613_hw_constraints(%struct.ak4613_priv* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.ak4613_priv*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hw_constraint_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ak4613_priv* %0, %struct.ak4613_priv** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %8 = load %struct.ak4613_priv*, %struct.ak4613_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %8, i32 0, i32 1
  store %struct.snd_pcm_hw_constraint_list* %9, %struct.snd_pcm_hw_constraint_list** %5, align 8
  %10 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %10, i32 0, i32 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ak4613_hw_constraints.ak4613_rates, i64 0, i64 0), i32** %11, align 8
  %12 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ak4613_hw_constraints.ak4613_rates, i64 0, i64 0))
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* @ak4613_hw_constraints.ak4613_rates, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ule i32 %24, 96000
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 256, i32 128
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ak4613_priv*, %struct.ak4613_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* @ak4613_hw_constraints.ak4613_rates, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul i32 %34, %35
  %37 = icmp uge i32 %30, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %50 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %5, align 8
  %51 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %48, i32 0, i32 %49, %struct.snd_pcm_hw_constraint_list* %50)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, %struct.snd_pcm_hw_constraint_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
