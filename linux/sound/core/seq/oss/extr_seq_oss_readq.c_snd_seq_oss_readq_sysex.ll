; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_sysex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_sysex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i32 }
%struct.snd_seq_event = type { i32 }
%struct.readq_sysex_ctx = type { i32, %struct.seq_oss_readq* }

@SNDRV_SEQ_EVENT_LENGTH_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_VARIABLE = common dso_local global i32 0, align 4
@readq_dump_sysex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_readq_sysex(%struct.seq_oss_readq* %0, i32 %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_readq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca %struct.readq_sysex_ctx, align 8
  store %struct.seq_oss_readq* %0, %struct.seq_oss_readq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  %9 = getelementptr inbounds %struct.readq_sysex_ctx, %struct.readq_sysex_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.readq_sysex_ctx, %struct.readq_sysex_ctx* %8, i32 0, i32 1
  %12 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %5, align 8
  store %struct.seq_oss_readq* %12, %struct.seq_oss_readq** %11, align 8
  %13 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %14 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_VARIABLE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %23 = load i32, i32* @readq_dump_sysex, align 4
  %24 = call i32 @snd_seq_dump_var_event(%struct.snd_seq_event* %22, i32 %23, %struct.readq_sysex_ctx* %8)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @snd_seq_dump_var_event(%struct.snd_seq_event*, i32, %struct.readq_sysex_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
