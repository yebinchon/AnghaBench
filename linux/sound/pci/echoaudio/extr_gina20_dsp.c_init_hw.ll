; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina20_dsp.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina20_dsp.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GINA20 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", align 1
@FW_GINA20_DSP = common dso_local global i32 0, align 4
@GD_SPDIF_STATUS_UNDEF = common dso_local global i32 0, align 4
@GD_CLOCK_UNDEF = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_INTERNAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_SPDIF = common dso_local global i32 0, align 4
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
  %11 = load i32, i32* @GINA20, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %21 = call i32 @init_dsp_comm_page(%struct.echoaudio* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %65

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
  %40 = load i32, i32* @FW_GINA20_DSP, align 4
  %41 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @GD_SPDIF_STATUS_UNDEF, align 4
  %44 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @GD_CLOCK_UNDEF, align 4
  %47 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @ECHO_CLOCK_BIT_INTERNAL, align 4
  %52 = load i32, i32* @ECHO_CLOCK_BIT_SPDIF, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %57 = call i32 @load_firmware(%struct.echoaudio* %56)
  store i32 %57, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %31
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %31
  %62 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %63 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %59, %23, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
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
