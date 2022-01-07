; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_enable_pcm_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_enable_pcm_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCMSERIALIN_PCM_SCB_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PCMSerialInput_Wave\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_enable_pcm_capture(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 1
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  store %struct.dsp_spos_instance* %7, %struct.dsp_spos_instance** %4, align 8
  %8 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %9 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %18 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %16
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %30 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %33 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %34 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCMSERIALIN_PCM_SCB_ADDR, align 4
  %37 = call i32 @cs46xx_add_record_source(%struct.snd_cs46xx* %32, i32 %35, i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %39 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %41 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %28, %25, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs46xx_add_record_source(%struct.snd_cs46xx*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
