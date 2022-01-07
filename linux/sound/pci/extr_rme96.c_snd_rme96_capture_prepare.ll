; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme96 = type { i32, i64 }

@RME96_STOP_CAPTURE = common dso_local global i32 0, align 4
@RME96_IO_RESET_REC_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme96*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.rme96* %5, %struct.rme96** %3, align 8
  %6 = load %struct.rme96*, %struct.rme96** %3, align 8
  %7 = getelementptr inbounds %struct.rme96, %struct.rme96* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.rme96*, %struct.rme96** %3, align 8
  %10 = call i64 @RME96_ISRECORDING(%struct.rme96* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.rme96*, %struct.rme96** %3, align 8
  %14 = load i32, i32* @RME96_STOP_CAPTURE, align 4
  %15 = call i32 @snd_rme96_trigger(%struct.rme96* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.rme96*, %struct.rme96** %3, align 8
  %18 = getelementptr inbounds %struct.rme96, %struct.rme96* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RME96_IO_RESET_REC_POS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load %struct.rme96*, %struct.rme96** %3, align 8
  %24 = getelementptr inbounds %struct.rme96, %struct.rme96* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_irq(i32* %24)
  ret i32 0
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @RME96_ISRECORDING(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_trigger(%struct.rme96*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
