; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_meters_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_meters_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@DSP_VC_METERS_ON = common dso_local global i32 0, align 4
@DSP_VC_METERS_OFF = common dso_local global i32 0, align 4
@ECHOGAIN_MUTED = common dso_local global i32 0, align 4
@DSP_MAXPIPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.echoaudio*, i8)* @set_meters_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_meters_on(%struct.echoaudio* %0, i8 signext %1) #0 {
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i8, align 1
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %10 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = load i32, i32* @DSP_VC_METERS_ON, align 4
  %16 = call i32 @send_vector(%struct.echoaudio* %14, i32 %15)
  %17 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %52

19:                                               ; preds = %8, %2
  %20 = load i8, i8* %4, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %24 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %29 = load i32, i32* @DSP_VC_METERS_OFF, align 4
  %30 = call i32 @send_vector(%struct.echoaudio* %28, i32 %29)
  %31 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %32 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* @ECHOGAIN_MUTED, align 4
  %40 = load i32, i32* @DSP_MAXPIPES, align 4
  %41 = call i32 @memset(i32* %38, i32 %39, i32 %40)
  %42 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %43 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* @ECHOGAIN_MUTED, align 4
  %49 = load i32, i32* @DSP_MAXPIPES, align 4
  %50 = call i32 @memset(i32* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %27, %22, %19
  br label %52

52:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
