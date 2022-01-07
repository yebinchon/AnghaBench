; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_cell_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_cell_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i32, i32 }
%struct.snd_seq_event_cell = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_fifo_cell_out(%struct.snd_seq_fifo* %0, %struct.snd_seq_event_cell** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_fifo*, align 8
  %6 = alloca %struct.snd_seq_event_cell**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_seq_event_cell*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %5, align 8
  store %struct.snd_seq_event_cell** %1, %struct.snd_seq_event_cell*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %12 = icmp ne %struct.snd_seq_fifo* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.snd_seq_event_cell**, %struct.snd_seq_event_cell*** %6, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %21, align 8
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @init_waitqueue_entry(i32* %10, i32 %22)
  %24 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %25 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %70, %20
  %29 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %30 = call %struct.snd_seq_event_cell* @fifo_cell_out(%struct.snd_seq_fifo* %29)
  store %struct.snd_seq_event_cell* %30, %struct.snd_seq_event_cell** %8, align 8
  %31 = icmp eq %struct.snd_seq_event_cell* %30, null
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %37 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %78

42:                                               ; preds = %32
  %43 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %44 = call i32 @set_current_state(i32 %43)
  %45 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %46 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %45, i32 0, i32 1
  %47 = call i32 @add_wait_queue(i32* %46, i32* %10)
  %48 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %49 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = call i32 (...) @schedule()
  %53 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %54 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %58 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %57, i32 0, i32 1
  %59 = call i32 @remove_wait_queue(i32* %58, i32* %10)
  %60 = load i32, i32* @current, align 4
  %61 = call i64 @signal_pending(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %65 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %64, i32 0, i32 0
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @ERESTARTSYS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %78

70:                                               ; preds = %42
  br label %28

71:                                               ; preds = %28
  %72 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %5, align 8
  %73 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %72, i32 0, i32 0
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  %77 = load %struct.snd_seq_event_cell**, %struct.snd_seq_event_cell*** %6, align 8
  store %struct.snd_seq_event_cell* %76, %struct.snd_seq_event_cell** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %63, %35, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.snd_seq_event_cell* @fifo_cell_out(%struct.snd_seq_fifo*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
