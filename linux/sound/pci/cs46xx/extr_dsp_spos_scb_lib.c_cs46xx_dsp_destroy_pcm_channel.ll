; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_destroy_pcm_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_destroy_pcm_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i64, i32, i64* }
%struct.dsp_pcm_channel_descriptor = type { i32, i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i64 }

@DSP_MAX_SRC_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs46xx_dsp_destroy_pcm_channel(%struct.snd_cs46xx* %0, %struct.dsp_pcm_channel_descriptor* %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_pcm_channel_descriptor*, align 8
  %5 = alloca %struct.dsp_spos_instance*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store %struct.dsp_pcm_channel_descriptor* %1, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %7, i32 0, i32 1
  %9 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  store %struct.dsp_spos_instance* %9, %struct.dsp_spos_instance** %5, align 8
  %10 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %11 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %16 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %21 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br label %26

26:                                               ; preds = %19, %14, %2
  %27 = phi i1 [ true, %14 ], [ true, %2 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @snd_BUG_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %102

32:                                               ; preds = %26
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %38 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %40 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %44 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %50 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %54 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %58 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %59 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %57, %struct.TYPE_2__* %60)
  %62 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %63 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %102, label %68

68:                                               ; preds = %32
  %69 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %70 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %71 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %69, %struct.TYPE_2__* %72)
  %74 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %75 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %68
  %79 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %80 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DSP_MAX_SRC_NR, align 8
  %83 = icmp uge i64 %81, %82
  br label %84

84:                                               ; preds = %78, %68
  %85 = phi i1 [ true, %68 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 @snd_BUG_ON(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %102

90:                                               ; preds = %84
  %91 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %92 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %4, align 8
  %95 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 0, i64* %97, align 8
  %98 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %99 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %31, %89, %90, %32
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
