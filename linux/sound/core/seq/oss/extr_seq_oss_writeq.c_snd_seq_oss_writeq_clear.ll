; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_writeq = type { i32 }
%struct.snd_seq_remove_events = type { i32 }

@SNDRV_SEQ_REMOVE_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_REMOVE_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_writeq_clear(%struct.seq_oss_writeq* %0) #0 {
  %2 = alloca %struct.seq_oss_writeq*, align 8
  %3 = alloca %struct.snd_seq_remove_events, align 4
  store %struct.seq_oss_writeq* %0, %struct.seq_oss_writeq** %2, align 8
  %4 = call i32 @memset(%struct.snd_seq_remove_events* %3, i32 0, i32 4)
  %5 = load i32, i32* @SNDRV_SEQ_REMOVE_OUTPUT, align 4
  %6 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %2, align 8
  %8 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SNDRV_SEQ_IOCTL_REMOVE_EVENTS, align 4
  %11 = call i32 @snd_seq_oss_control(i32 %9, i32 %10, %struct.snd_seq_remove_events* %3)
  %12 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %2, align 8
  %13 = call i32 @snd_seq_oss_writeq_wakeup(%struct.seq_oss_writeq* %12, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.snd_seq_remove_events*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_control(i32, i32, %struct.snd_seq_remove_events*) #1

declare dso_local i32 @snd_seq_oss_writeq_wakeup(%struct.seq_oss_writeq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
