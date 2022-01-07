; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_darla24_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_darla24_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GD24_96000 = common dso_local global i32 0, align 4
@GD24_88200 = common dso_local global i32 0, align 4
@GD24_48000 = common dso_local global i32 0, align 4
@GD24_44100 = common dso_local global i32 0, align 4
@GD24_32000 = common dso_local global i32 0, align 4
@GD24_22050 = common dso_local global i32 0, align 4
@GD24_16000 = common dso_local global i32 0, align 4
@GD24_11025 = common dso_local global i32 0, align 4
@GD24_8000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"set_sample_rate: Error, invalid sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d clock %d\0A\00", align 1
@ECHO_CLOCK_ESYNC = common dso_local global i64 0, align 8
@GD24_EXT_SYNC = common dso_local global i32 0, align 4
@DSP_VC_SET_GD_AUDIO_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %26 [
    i32 96000, label %8
    i32 88200, label %10
    i32 48000, label %12
    i32 44100, label %14
    i32 32000, label %16
    i32 22050, label %18
    i32 16000, label %20
    i32 11025, label %22
    i32 8000, label %24
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @GD24_96000, align 4
  store i32 %9, i32* %6, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load i32, i32* @GD24_88200, align 4
  store i32 %11, i32* %6, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load i32, i32* @GD24_48000, align 4
  store i32 %13, i32* %6, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @GD24_44100, align 4
  store i32 %15, i32* %6, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* @GD24_32000, align 4
  store i32 %17, i32* %6, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* @GD24_22050, align 4
  store i32 %19, i32* %6, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @GD24_16000, align 4
  store i32 %21, i32* %6, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load i32, i32* @GD24_11025, align 4
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @GD24_8000, align 4
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10, %8
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = call i64 @wait_handshake(%struct.echoaudio* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %79

43:                                               ; preds = %36
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %54 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ECHO_CLOCK_ESYNC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = load i32, i32* @GD24_EXT_SYNC, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %43
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %66 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %71 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %75 = call i32 @clear_handshake(%struct.echoaudio* %74)
  %76 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %77 = load i32, i32* @DSP_VC_SET_GD_AUDIO_STATE, align 4
  %78 = call i32 @send_vector(%struct.echoaudio* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %62, %40, %26
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
