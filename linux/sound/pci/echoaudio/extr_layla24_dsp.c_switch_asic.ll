; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_switch_asic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_switch_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MONITOR_ARRAY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ECHOGAIN_MUTED = common dso_local global i32 0, align 4
@DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i16)* @switch_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_asic(%struct.echoaudio* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %5, align 2
  %8 = sext i16 %7 to i32
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %9, i32 0, i32 0
  %11 = load i16, i16* %10, align 8
  %12 = sext i16 %11 to i32
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %2
  %15 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %16 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmemdup(i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %70

28:                                               ; preds = %14
  %29 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ECHOGAIN_MUTED, align 4
  %35 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %36 = call i32 @memset(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = load i32, i32* @DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC, align 4
  %39 = load i16, i16* %5, align 2
  %40 = call i64 @load_asic_generic(%struct.echoaudio* %37, i32 %38, i16 signext %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %28
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %28
  %56 = load i16, i16* %5, align 2
  %57 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 0
  store i16 %56, i16* %58, align 8
  %59 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %60 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %66 = call i32 @memcpy(i32 %63, i32* %64, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @kfree(i32* %67)
  br label %69

69:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %42, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @load_asic_generic(%struct.echoaudio*, i32, i16 signext) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
