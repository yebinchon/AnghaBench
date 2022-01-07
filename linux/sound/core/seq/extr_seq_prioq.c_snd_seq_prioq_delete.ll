; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_prioq = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"ALSA: seq: snd_seq_prioq_delete() called with NULL prioq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_prioq_delete(%struct.snd_seq_prioq** %0) #0 {
  %2 = alloca %struct.snd_seq_prioq**, align 8
  %3 = alloca %struct.snd_seq_prioq*, align 8
  store %struct.snd_seq_prioq** %0, %struct.snd_seq_prioq*** %2, align 8
  %4 = load %struct.snd_seq_prioq**, %struct.snd_seq_prioq*** %2, align 8
  %5 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  store %struct.snd_seq_prioq* %5, %struct.snd_seq_prioq** %3, align 8
  %6 = load %struct.snd_seq_prioq**, %struct.snd_seq_prioq*** %2, align 8
  store %struct.snd_seq_prioq* null, %struct.snd_seq_prioq** %6, align 8
  %7 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %8 = icmp eq %struct.snd_seq_prioq* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %13 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %19 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %24 = call i32 @snd_seq_prioq_cell_out(%struct.snd_seq_prioq* %23, i32* null)
  %25 = call i32 @snd_seq_cell_free(i32 %24)
  br label %17

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %29 = call i32 @kfree(%struct.snd_seq_prioq* %28)
  br label %30

30:                                               ; preds = %27, %9
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @snd_seq_cell_free(i32) #1

declare dso_local i32 @snd_seq_prioq_cell_out(%struct.snd_seq_prioq*, i32*) #1

declare dso_local i32 @kfree(%struct.snd_seq_prioq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
