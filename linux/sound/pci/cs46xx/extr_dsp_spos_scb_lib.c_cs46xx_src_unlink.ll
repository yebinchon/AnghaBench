; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_src_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_src_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_src_unlink(%struct.snd_cs46xx* %0, %struct.dsp_scb_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_scb_descriptor*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_scb_descriptor* %1, %struct.dsp_scb_descriptor** %5, align 8
  %7 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %8 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %20 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %21 = call i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx* %19, %struct.dsp_scb_descriptor* %20, i32 0, i32 0)
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %23 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %27 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %28 = call i32 @_dsp_unlink_scb(%struct.snd_cs46xx* %26, %struct.dsp_scb_descriptor* %27)
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %30 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_dsp_unlink_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
