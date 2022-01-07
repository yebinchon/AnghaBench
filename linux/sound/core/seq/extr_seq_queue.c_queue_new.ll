; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32, i64, i32*, i32*, i32*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_seq_queue* (i32, i32)* @queue_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_seq_queue* @queue_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.snd_seq_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_seq_queue* @kzalloc(i32 64, i32 %7)
  store %struct.snd_seq_queue* %8, %struct.snd_seq_queue** %6, align 8
  %9 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %10 = icmp ne %struct.snd_seq_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %3, align 8
  br label %74

12:                                               ; preds = %2
  %13 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %14 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %13, i32 0, i32 10
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %17 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %16, i32 0, i32 9
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %20 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %19, i32 0, i32 8
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %23 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %22, i32 0, i32 7
  %24 = call i32 @snd_use_lock_init(i32* %23)
  %25 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %26 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = call i8* (...) @snd_seq_prioq_new()
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 6
  store i32* %28, i32** %30, align 8
  %31 = call i8* (...) @snd_seq_prioq_new()
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %34 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = call i32* (...) @snd_seq_timer_new()
  %36 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %37 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %39 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %12
  %43 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %44 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %49 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47, %42, %12
  %53 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %54 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %53, i32 0, i32 6
  %55 = call i32 @snd_seq_prioq_delete(i32** %54)
  %56 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %57 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %56, i32 0, i32 5
  %58 = call i32 @snd_seq_prioq_delete(i32** %57)
  %59 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %60 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %59, i32 0, i32 4
  %61 = call i32 @snd_seq_timer_delete(i32** %60)
  %62 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %63 = call i32 @kfree(%struct.snd_seq_queue* %62)
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %3, align 8
  br label %74

64:                                               ; preds = %47
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %67 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %70 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %72 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  store %struct.snd_seq_queue* %73, %struct.snd_seq_queue** %3, align 8
  br label %74

74:                                               ; preds = %64, %52, %11
  %75 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  ret %struct.snd_seq_queue* %75
}

declare dso_local %struct.snd_seq_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_use_lock_init(i32*) #1

declare dso_local i8* @snd_seq_prioq_new(...) #1

declare dso_local i32* @snd_seq_timer_new(...) #1

declare dso_local i32 @snd_seq_prioq_delete(i32**) #1

declare dso_local i32 @snd_seq_timer_delete(i32**) #1

declare dso_local i32 @kfree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
