; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_cell_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_cell_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, i32 }
%struct.snd_seq_prioq = type { i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }

@.str = private unnamed_addr constant [59 x i8] c"ALSA: seq: snd_seq_prioq_cell_in() called with NULL prioq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_event_cell* @snd_seq_prioq_cell_out(%struct.snd_seq_prioq* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_seq_event_cell*, align 8
  %4 = alloca %struct.snd_seq_prioq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_event_cell*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_seq_prioq* %0, %struct.snd_seq_prioq** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %9 = icmp eq %struct.snd_seq_prioq* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %3, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %14 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %18 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %17, i32 0, i32 3
  %19 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %18, align 8
  store %struct.snd_seq_event_cell* %19, %struct.snd_seq_event_cell** %6, align 8
  %20 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %21 = icmp ne %struct.snd_seq_event_cell* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %27 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %26, i32 0, i32 1
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @event_is_ready(i32* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %6, align 8
  br label %32

32:                                               ; preds = %31, %25, %22, %12
  %33 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %34 = icmp ne %struct.snd_seq_event_cell* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %37 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %36, i32 0, i32 0
  %38 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %37, align 8
  %39 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %40 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %39, i32 0, i32 3
  store %struct.snd_seq_event_cell* %38, %struct.snd_seq_event_cell** %40, align 8
  %41 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %42 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %41, i32 0, i32 2
  %43 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %42, align 8
  %44 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %45 = icmp eq %struct.snd_seq_event_cell* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %48 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %47, i32 0, i32 2
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %48, align 8
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %51 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %50, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %51, align 8
  %52 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %53 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %32
  %57 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %58 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  store %struct.snd_seq_event_cell* %61, %struct.snd_seq_event_cell** %3, align 8
  br label %62

62:                                               ; preds = %56, %10
  %63 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %3, align 8
  ret %struct.snd_seq_event_cell* %63
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @event_is_ready(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
