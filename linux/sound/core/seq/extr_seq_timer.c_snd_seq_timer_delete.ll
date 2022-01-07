; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"ALSA: seq: snd_seq_timer_delete() called with NULL timer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_timer_delete(%struct.snd_seq_timer** %0) #0 {
  %2 = alloca %struct.snd_seq_timer**, align 8
  %3 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_seq_timer** %0, %struct.snd_seq_timer*** %2, align 8
  %4 = load %struct.snd_seq_timer**, %struct.snd_seq_timer*** %2, align 8
  %5 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  store %struct.snd_seq_timer* %5, %struct.snd_seq_timer** %3, align 8
  %6 = load %struct.snd_seq_timer**, %struct.snd_seq_timer*** %2, align 8
  store %struct.snd_seq_timer* null, %struct.snd_seq_timer** %6, align 8
  %7 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %8 = icmp eq %struct.snd_seq_timer* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %13 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %15 = call i32 @snd_seq_timer_stop(%struct.snd_seq_timer* %14)
  %16 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %17 = call i32 @snd_seq_timer_reset(%struct.snd_seq_timer* %16)
  %18 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %19 = call i32 @kfree(%struct.snd_seq_timer* %18)
  br label %20

20:                                               ; preds = %11, %9
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @snd_seq_timer_stop(%struct.snd_seq_timer*) #1

declare dso_local i32 @snd_seq_timer_reset(%struct.snd_seq_timer*) #1

declare dso_local i32 @kfree(%struct.snd_seq_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
