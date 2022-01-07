; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_event_in.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_event_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i32, i32, i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell*, i32, i32 }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.snd_seq_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_fifo_event_in(%struct.snd_seq_fifo* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_fifo*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca %struct.snd_seq_event_cell*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  %9 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %10 = icmp ne %struct.snd_seq_fifo* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %20 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %19, i32 0, i32 0
  %21 = call i32 @snd_use_lock_use(i32* %20)
  %22 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %23 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %26 = call i32 @snd_seq_event_dup(i32 %24, %struct.snd_seq_event* %25, %struct.snd_seq_event_cell** %6, i32 1, i32* null, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %29
  %40 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %41 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %40, i32 0, i32 6
  %42 = call i32 @atomic_inc(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %44, i32 0, i32 0
  %46 = call i32 @snd_use_lock_free(i32* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %18
  %49 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %54 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %53, i32 0, i32 5
  %55 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %54, align 8
  %56 = icmp ne %struct.snd_seq_event_cell* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %59 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %60 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %59, i32 0, i32 5
  %61 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %60, align 8
  %62 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %61, i32 0, i32 0
  store %struct.snd_seq_event_cell* %58, %struct.snd_seq_event_cell** %62, align 8
  br label %63

63:                                               ; preds = %57, %48
  %64 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %65 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %66 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %65, i32 0, i32 5
  store %struct.snd_seq_event_cell* %64, %struct.snd_seq_event_cell** %66, align 8
  %67 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %68 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %67, i32 0, i32 4
  %69 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %68, align 8
  %70 = icmp eq %struct.snd_seq_event_cell* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %73 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %74 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %73, i32 0, i32 4
  store %struct.snd_seq_event_cell* %72, %struct.snd_seq_event_cell** %74, align 8
  br label %75

75:                                               ; preds = %71, %63
  %76 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %77 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %76, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %77, align 8
  %78 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %79 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %83 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %82, i32 0, i32 2
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %87 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %86, i32 0, i32 1
  %88 = call i64 @waitqueue_active(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %92 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %91, i32 0, i32 1
  %93 = call i32 @wake_up(i32* %92)
  br label %94

94:                                               ; preds = %90, %75
  %95 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %96 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %95, i32 0, i32 0
  %97 = call i32 @snd_use_lock_free(i32* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %43, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_use_lock_use(i32*) #1

declare dso_local i32 @snd_seq_event_dup(i32, %struct.snd_seq_event*, %struct.snd_seq_event_cell**, i32, i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
