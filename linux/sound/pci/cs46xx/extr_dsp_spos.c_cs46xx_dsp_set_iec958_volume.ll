; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_set_iec958_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_set_iec958_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i8*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_set_iec958_volume(%struct.snd_cs46xx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 1
  %10 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  store %struct.dsp_spos_instance* %10, %struct.dsp_spos_instance** %7, align 8
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %12 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %15 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %20 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %21 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx* %19, i32* %22, i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %29 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %7, align 8
  %32 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx*, i32*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
