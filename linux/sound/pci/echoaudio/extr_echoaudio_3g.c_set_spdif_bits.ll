; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_set_spdif_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_set_spdif_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i64 }

@E3G_SPDIF_FORMAT_CLEAR_MASK = common dso_local global i32 0, align 4
@E3G_SPDIF_SAMPLE_RATE0 = common dso_local global i32 0, align 4
@E3G_SPDIF_SAMPLE_RATE1 = common dso_local global i32 0, align 4
@E3G_SPDIF_PRO_MODE = common dso_local global i32 0, align 4
@E3G_SPDIF_NOT_AUDIO = common dso_local global i32 0, align 4
@E3G_SPDIF_24_BIT = common dso_local global i32 0, align 4
@E3G_SPDIF_TWO_CHANNEL = common dso_local global i32 0, align 4
@E3G_SPDIF_COPY_PERMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32, i32)* @set_spdif_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_spdif_bits(%struct.echoaudio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @E3G_SPDIF_FORMAT_CLEAR_MASK, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %31 [
    i32 32000, label %11
    i32 44100, label %17
    i32 48000, label %27
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @E3G_SPDIF_SAMPLE_RATE0, align 4
  %13 = load i32, i32* @E3G_SPDIF_SAMPLE_RATE1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @E3G_SPDIF_SAMPLE_RATE0, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @E3G_SPDIF_SAMPLE_RATE1, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %3, %27, %26, %11
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @E3G_SPDIF_PRO_MODE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @E3G_SPDIF_NOT_AUDIO, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @E3G_SPDIF_24_BIT, align 4
  %51 = load i32, i32* @E3G_SPDIF_TWO_CHANNEL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @E3G_SPDIF_COPY_PERMIT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
