; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, %struct.TYPE_4__*, i32, i64, i32, %struct.snd_pcm_substream** }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.audiopipe = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DSP_MAXPIPES = common dso_local global i32 0, align 4
@PIPE_STATE_STARTED = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_echo_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.echoaudio*
  store %struct.echoaudio* %12, %struct.echoaudio** %6, align 8
  %13 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 4
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %17 = call i32 @service_irq(%struct.echoaudio* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 4
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %95

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %87, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DSP_MAXPIPES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %90

30:                                               ; preds = %26
  %31 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %32 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %31, i32 0, i32 5
  %33 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %33, i64 %35
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %36, align 8
  store %struct.snd_pcm_substream* %37, %struct.snd_pcm_substream** %7, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %39 = icmp ne %struct.snd_pcm_substream* %38, null
  br i1 %39, label %40, label %86

40:                                               ; preds = %30
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.audiopipe*
  %47 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PIPE_STATE_STARTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %40
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %53 = call i32 @pcm_pointer(%struct.snd_pcm_substream* %52)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %53, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %60, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %51
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %72 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %78 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %77, i32 0, i32 4
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %81 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %80)
  %82 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %83 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %82, i32 0, i32 4
  %84 = call i32 @spin_lock(i32* %83)
  br label %85

85:                                               ; preds = %69, %51
  br label %86

86:                                               ; preds = %85, %40, %30
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %26

90:                                               ; preds = %26
  %91 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %92 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %91, i32 0, i32 4
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @service_irq(%struct.echoaudio*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pcm_pointer(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
