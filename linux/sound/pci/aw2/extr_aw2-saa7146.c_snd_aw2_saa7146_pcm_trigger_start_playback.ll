; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_pcm_trigger_start_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_pcm_trigger_start_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aw2_saa7146 = type { i32 }

@ACON1 = common dso_local global i32 0, align 4
@TR_E_A2_OUT = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@WS2_CTRL = common dso_local global i32 0, align 4
@TR_E_A1_OUT = common dso_local global i32 0, align 4
@WS1_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_aw2_saa7146_pcm_trigger_start_playback(%struct.snd_aw2_saa7146* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_aw2_saa7146*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_aw2_saa7146* %0, %struct.snd_aw2_saa7146** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @ACON1, align 4
  %7 = call i32 @READREG(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* @TR_E_A2_OUT, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* @TR_E_A2_OUT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MC1, align 4
  %16 = call i32 @WRITEREG(i32 %14, i32 %15)
  %17 = load i32, i32* @WS2_CTRL, align 4
  %18 = mul nsw i32 2, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ACON1, align 4
  %23 = call i32 @WRITEREG(i32 %21, i32 %22)
  br label %42

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* @TR_E_A1_OUT, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* @TR_E_A1_OUT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MC1, align 4
  %33 = call i32 @WRITEREG(i32 %31, i32 %32)
  %34 = load i32, i32* @WS1_CTRL, align 4
  %35 = mul nsw i32 1, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ACON1, align 4
  %40 = call i32 @WRITEREG(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %27, %24
  br label %42

42:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @READREG(i32) #1

declare dso_local i32 @WRITEREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
