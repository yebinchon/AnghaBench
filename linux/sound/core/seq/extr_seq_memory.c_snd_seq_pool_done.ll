; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_pool_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_pool_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i64, i64, i32*, %struct.snd_seq_event_cell*, i32, i32 }
%struct.snd_seq_event_cell = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_pool_done(%struct.snd_seq_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_pool*, align 8
  %4 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %3, align 8
  %5 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %6 = icmp ne %struct.snd_seq_pool* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %15, i32 0, i32 6
  %17 = call i64 @waitqueue_active(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %21 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %20, i32 0, i32 6
  %22 = call i32 @wake_up(i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  br label %24

24:                                               ; preds = %29, %23
  %25 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %26 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %25, i32 0, i32 5
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %24

31:                                               ; preds = %24
  %32 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %33 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %36 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %35, i32 0, i32 4
  %37 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %36, align 8
  store %struct.snd_seq_event_cell* %37, %struct.snd_seq_event_cell** %4, align 8
  %38 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %39 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %38, i32 0, i32 4
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %39, align 8
  %40 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %41 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %43 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %45 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %48 = call i32 @kvfree(%struct.snd_seq_event_cell* %47)
  %49 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %50 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_irq(i32* %50)
  %52 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %53 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %55 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %31, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kvfree(%struct.snd_seq_event_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
