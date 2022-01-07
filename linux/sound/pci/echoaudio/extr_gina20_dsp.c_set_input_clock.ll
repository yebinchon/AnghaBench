; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina20_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina20_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i8*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@GD_CLOCK_UNDEF = common dso_local global i8* null, align 8
@GD_SPDIF_STATUS_UNDEF = common dso_local global i32 0, align 4
@GD_CLOCK_SPDIFIN = common dso_local global i8* null, align 8
@GD_SPDIF_STATUS_NOCHANGE = common dso_local global i32 0, align 4
@DSP_VC_SET_GD_AUDIO_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %44 [
    i32 129, label %7
    i32 128, label %22
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** @GD_CLOCK_UNDEF, align 8
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @GD_SPDIF_STATUS_UNDEF, align 4
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %15 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %16 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @set_sample_rate(%struct.echoaudio* %14, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %21 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %47

22:                                               ; preds = %2
  %23 = load i8*, i8** @GD_CLOCK_SPDIFIN, align 8
  %24 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %23, i8** %27, align 8
  %28 = load i32, i32* @GD_SPDIF_STATUS_NOCHANGE, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %34 = call i32 @clear_handshake(%struct.echoaudio* %33)
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = load i32, i32* @DSP_VC_SET_GD_AUDIO_STATE, align 4
  %37 = call i32 @send_vector(%struct.echoaudio* %35, i32 %36)
  %38 = load i8*, i8** @GD_CLOCK_SPDIFIN, align 8
  %39 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %43 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %22, %7
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
