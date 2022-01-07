; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MONA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", align 1
@ECHO_CLOCK_BIT_INTERNAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_SPDIF = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_WORD = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_ADAT = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@FW_MONA_361_DSP = common dso_local global i32 0, align 4
@FW_MONA_301_DSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32, i32)* @init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw(%struct.echoaudio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 65520
  %11 = load i32, i32* @MONA, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %21 = call i32 @init_dsp_comm_page(%struct.echoaudio* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @ECHO_CLOCK_BIT_INTERNAL, align 4
  %41 = load i32, i32* @ECHO_CLOCK_BIT_SPDIF, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ECHO_CLOCK_BIT_WORD, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ECHO_CLOCK_BIT_ADAT, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA, align 4
  %50 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_ADAT, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %57 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @DEVICE_ID_56361, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %31
  %63 = load i32, i32* @FW_MONA_361_DSP, align 4
  %64 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %65 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %31
  %67 = load i32, i32* @FW_MONA_301_DSP, align 4
  %68 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %72 = call i32 @load_firmware(%struct.echoaudio* %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %70
  %77 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %78 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %74, %23, %16
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_dsp_comm_page(%struct.echoaudio*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @load_firmware(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
