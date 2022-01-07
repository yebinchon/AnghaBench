; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_dapm_context = type { i64 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dapm_context*, i32)* @tm2_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_set_bias_level(%struct.snd_soc_card* %0, %struct.snd_soc_dapm_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.snd_soc_dapm_context* %1, %struct.snd_soc_dapm_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %9, i32 %15)
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %8, align 8
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %42 [
    i32 128, label %29
    i32 129, label %39
  ]

29:                                               ; preds = %27
  %30 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %37 = call i32 @tm2_start_sysclk(%struct.snd_soc_card* %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %43

39:                                               ; preds = %27
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %41 = call i32 @tm2_stop_sysclk(%struct.snd_soc_card* %40)
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %39, %38
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @tm2_start_sysclk(%struct.snd_soc_card*) #1

declare dso_local i32 @tm2_stop_sysclk(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
