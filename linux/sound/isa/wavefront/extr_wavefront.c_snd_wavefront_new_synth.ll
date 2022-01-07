; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront.c_snd_wavefront_new_synth.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront.c_snd_wavefront_new_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_card = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"WaveFront\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"WaveFront (ICS2115) wavetable synthesizer\00", align 1
@snd_wavefront_synth_open = common dso_local global i32 0, align 4
@snd_wavefront_synth_release = common dso_local global i32 0, align 4
@snd_wavefront_synth_ioctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_hwdep* (%struct.snd_card*, i32, %struct.TYPE_6__*)* @snd_wavefront_new_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_hwdep* @snd_wavefront_new_synth(%struct.snd_card* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.snd_hwdep*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %10 = call i64 @snd_wavefront_detect(%struct.TYPE_6__* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.snd_hwdep* null, %struct.snd_hwdep** %4, align 8
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i64 @snd_wavefront_start(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store %struct.snd_hwdep* null, %struct.snd_hwdep** %4, align 8
  br label %43

19:                                               ; preds = %13
  %20 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @snd_hwdep_new(%struct.snd_card* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.snd_hwdep** %8)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.snd_hwdep* null, %struct.snd_hwdep** %4, align 8
  br label %43

25:                                               ; preds = %19
  %26 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %27 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @snd_wavefront_synth_open, align 4
  %31 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %32 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @snd_wavefront_synth_release, align 4
  %35 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %36 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @snd_wavefront_synth_ioctl, align 4
  %39 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %40 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  store %struct.snd_hwdep* %42, %struct.snd_hwdep** %4, align 8
  br label %43

43:                                               ; preds = %25, %24, %18, %12
  %44 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  ret %struct.snd_hwdep* %44
}

declare dso_local i64 @snd_wavefront_detect(%struct.TYPE_6__*) #1

declare dso_local i64 @snd_wavefront_start(i32*) #1

declare dso_local i64 @snd_hwdep_new(%struct.snd_card*, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
