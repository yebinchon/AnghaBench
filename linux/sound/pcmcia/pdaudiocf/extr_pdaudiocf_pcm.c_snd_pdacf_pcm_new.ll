; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_snd_pdacf_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_snd_pdacf_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i32, %struct.snd_pcm*, %struct.TYPE_4__* }
%struct.snd_pcm = type { i32, %struct.TYPE_3__*, i32, i64, %struct.snd_pdacf* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"PDAudioCF\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@pdacf_pcm_capture_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pdacf_pcm_new(%struct.snd_pdacf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pdacf*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pdacf* %0, %struct.snd_pdacf** %3, align 8
  %6 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @snd_pcm_new(%struct.TYPE_4__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 1, %struct.snd_pcm** %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %17 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %15, i64 %16, i32* @pdacf_pcm_capture_ops)
  %18 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 4
  store %struct.snd_pdacf* %18, %struct.snd_pdacf** %20, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %27, i32 %32)
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %35, i32 0, i32 1
  store %struct.snd_pcm* %34, %struct.snd_pcm** %36, align 8
  %37 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_ak4117_build(i32 %39, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %14
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_4__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_ak4117_build(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
