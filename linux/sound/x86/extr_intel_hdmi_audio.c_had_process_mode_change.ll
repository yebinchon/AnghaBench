; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_process_mode_change.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_process_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_intelhad = type { i32, i64, i32, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"programming N value failed %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_intelhad*)* @had_process_mode_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_process_mode_change(%struct.snd_intelhad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_intelhad*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_intelhad* %0, %struct.snd_intelhad** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %10 = call %struct.snd_pcm_substream* @had_substream_get(%struct.snd_intelhad* %9)
  store %struct.snd_pcm_substream* %10, %struct.snd_pcm_substream** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %16 = call i32 @had_enable_audio(%struct.snd_intelhad* %15, i32 0)
  %17 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %18 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %26 = call i32 @had_prog_n(i32 %24, i32* %7, %struct.snd_intelhad* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %31 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %57

35:                                               ; preds = %14
  %36 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %37 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %42 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %54 = call i32 @had_prog_cts(i32 %49, i32 %50, i32 %51, i32 %52, %struct.snd_intelhad* %53)
  %55 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %56 = call i32 @had_enable_audio(%struct.snd_intelhad* %55, i32 1)
  br label %57

57:                                               ; preds = %44, %29
  %58 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %59 = call i32 @had_substream_put(%struct.snd_intelhad* %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.snd_pcm_substream* @had_substream_get(%struct.snd_intelhad*) #1

declare dso_local i32 @had_enable_audio(%struct.snd_intelhad*, i32) #1

declare dso_local i32 @had_prog_n(i32, i32*, %struct.snd_intelhad*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @had_prog_cts(i32, i32, i32, i32, %struct.snd_intelhad*) #1

declare dso_local i32 @had_substream_put(%struct.snd_intelhad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
