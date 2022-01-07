; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_check_queue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_check_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_seq_event_cell = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_check_queue(%struct.snd_seq_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_seq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %10 = icmp eq %struct.snd_seq_queue* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %95

12:                                               ; preds = %3
  %13 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %14 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %13, i32 0, i32 2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %18 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %23 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %24, i32 0, i32 2
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %95

28:                                               ; preds = %12
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %32 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %31, i32 0, i32 2
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %81, %28
  br label %36

36:                                               ; preds = %49, %35
  %37 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %38 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %41 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call %struct.snd_seq_event_cell* @snd_seq_prioq_cell_out(i32 %39, i32* %44)
  store %struct.snd_seq_event_cell* %45, %struct.snd_seq_event_cell** %8, align 8
  %46 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %47 = icmp ne %struct.snd_seq_event_cell* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %54

49:                                               ; preds = %36
  %50 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @snd_seq_dispatch_event(%struct.snd_seq_event_cell* %50, i32 %51, i32 %52)
  br label %36

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %67, %54
  %56 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %57 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %60 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call %struct.snd_seq_event_cell* @snd_seq_prioq_cell_out(i32 %58, i32* %62)
  store %struct.snd_seq_event_cell* %63, %struct.snd_seq_event_cell** %8, align 8
  %64 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %65 = icmp ne %struct.snd_seq_event_cell* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %72

67:                                               ; preds = %55
  %68 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @snd_seq_dispatch_event(%struct.snd_seq_event_cell* %68, i32 %69, i32 %70)
  br label %55

72:                                               ; preds = %66
  %73 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %74 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %73, i32 0, i32 2
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %78 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %83 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %85 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %84, i32 0, i32 2
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %35

88:                                               ; preds = %72
  %89 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %90 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %92 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %91, i32 0, i32 2
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %88, %21, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.snd_seq_event_cell* @snd_seq_prioq_cell_out(i32, i32*) #1

declare dso_local i32 @snd_seq_dispatch_event(%struct.snd_seq_event_cell*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
