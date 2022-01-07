; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.dsp_scb_descriptor* }
%struct.dsp_scb_descriptor = type { %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor* }
%struct.dsp_pcm_channel_descriptor = type { i64, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor* }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_pcm_link(%struct.snd_cs46xx* %0, %struct.dsp_pcm_channel_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_pcm_channel_descriptor*, align 8
  %6 = alloca %struct.dsp_spos_instance*, align 8
  %7 = alloca %struct.dsp_scb_descriptor*, align 8
  %8 = alloca %struct.dsp_scb_descriptor*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_pcm_channel_descriptor* %1, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %11 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %10, i32 0, i32 1
  %12 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %11, align 8
  store %struct.dsp_spos_instance* %12, %struct.dsp_spos_instance** %6, align 8
  %13 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %13, i32 0, i32 2
  %15 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  store %struct.dsp_scb_descriptor* %15, %struct.dsp_scb_descriptor** %8, align 8
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %17 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %26 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %86

31:                                               ; preds = %2
  %32 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  store %struct.dsp_scb_descriptor* %32, %struct.dsp_scb_descriptor** %7, align 8
  %33 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %34 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %33, i32 0, i32 1
  %35 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %34, align 8
  %36 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %37 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %36, i32 0, i32 0
  %38 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %37, align 8
  %39 = icmp ne %struct.dsp_scb_descriptor* %35, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %41, i32 0, i32 1
  %43 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %42, align 8
  %44 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %45 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %44, i32 0, i32 1
  %46 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %45, align 8
  %47 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %46, i32 0, i32 0
  store %struct.dsp_scb_descriptor* %43, %struct.dsp_scb_descriptor** %47, align 8
  %48 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %49 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %48, i32 0, i32 1
  %50 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %49, align 8
  %51 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %52 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %51, i32 0, i32 1
  %53 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %52, align 8
  %54 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %53, i32 0, i32 2
  store %struct.dsp_scb_descriptor* %50, %struct.dsp_scb_descriptor** %54, align 8
  br label %55

55:                                               ; preds = %40, %31
  %56 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %57 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %56, i32 0, i32 1
  %58 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %57, align 8
  %59 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %60 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %59, i32 0, i32 1
  store %struct.dsp_scb_descriptor* %58, %struct.dsp_scb_descriptor** %60, align 8
  %61 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %62 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %61, i32 0, i32 1
  %63 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %62, align 8
  %64 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %63, i32 0, i32 0
  %65 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %64, align 8
  %66 = call i32 @snd_BUG_ON(%struct.dsp_scb_descriptor* %65)
  %67 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %68 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %69 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %68, i32 0, i32 1
  %70 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %69, align 8
  %71 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %70, i32 0, i32 0
  store %struct.dsp_scb_descriptor* %67, %struct.dsp_scb_descriptor** %71, align 8
  %72 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %73 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %74 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %73, i32 0, i32 1
  %75 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %74, align 8
  %76 = call i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx* %72, %struct.dsp_scb_descriptor* %75)
  %77 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %78 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %79 = call i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx* %77, %struct.dsp_scb_descriptor* %78)
  %80 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %81 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %83 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %55, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_BUG_ON(%struct.dsp_scb_descriptor*) #1

declare dso_local i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
