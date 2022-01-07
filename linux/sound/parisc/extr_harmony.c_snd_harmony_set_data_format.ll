; ModuleID = '/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_set_data_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_set_data_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_harmony = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HARMONY_DF_16BIT_LINEAR = common dso_local global i32 0, align 4
@HARMONY_DF_8BIT_ALAW = common dso_local global i32 0, align 4
@HARMONY_DF_8BIT_ULAW = common dso_local global i32 0, align 4
@SILENCE_BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_harmony*, i32, i32)* @snd_harmony_set_data_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_set_data_format(%struct.snd_harmony* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_harmony*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_harmony* %0, %struct.snd_harmony** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %10 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 130, label %16
    i32 129, label %18
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @HARMONY_DF_16BIT_LINEAR, align 4
  store i32 %15, i32* %8, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @HARMONY_DF_8BIT_ALAW, align 4
  store i32 %17, i32* %8, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @HARMONY_DF_8BIT_ULAW, align 4
  store i32 %19, i32* %8, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @HARMONY_DF_16BIT_LINEAR, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %32 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SILENCE_BUFSZ, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @snd_pcm_format_physical_width(i32 %36)
  %38 = sdiv i32 %37, 8
  %39 = sdiv i32 %35, %38
  %40 = call i32 @snd_pcm_format_set_silence(i32 %30, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %29, %25
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @snd_pcm_format_set_silence(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
