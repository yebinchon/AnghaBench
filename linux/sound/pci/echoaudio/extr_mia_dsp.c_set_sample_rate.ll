; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mia_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mia_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@MIA_96000 = common dso_local global i32 0, align 4
@MIA_88200 = common dso_local global i32 0, align 4
@MIA_48000 = common dso_local global i32 0, align 4
@MIA_44100 = common dso_local global i32 0, align 4
@MIA_32000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d invalid!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_SPDIF = common dso_local global i64 0, align 8
@MIA_SPDIF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_CLOCKS = common dso_local global i32 0, align 4
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
  switch i32 %7, label %18 [
    i32 96000, label %8
    i32 88200, label %10
    i32 48000, label %12
    i32 44100, label %14
    i32 32000, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @MIA_96000, align 4
  store i32 %9, i32* %6, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load i32, i32* @MIA_88200, align 4
  store i32 %11, i32* %6, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @MIA_48000, align 4
  store i32 %13, i32* %6, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* @MIA_44100, align 4
  store i32 %15, i32* %6, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @MIA_32000, align 4
  store i32 %17, i32* %6, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %16, %14, %12, %10, %8
  %29 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ECHO_CLOCK_SPDIF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @MIA_SPDIF, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @le32_to_cpu(i8* %44)
  %46 = icmp ne i32 %39, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %38
  %48 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %49 = call i64 @wait_handshake(%struct.echoaudio* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i8* %56, i8** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %71 = call i32 @clear_handshake(%struct.echoaudio* %70)
  %72 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %73 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %74 = call i32 @send_vector(%struct.echoaudio* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %54, %51, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
