; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_queue* @snd_seq_queue_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_seq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.snd_seq_queue* @queue_new(i32 %9, i32 %10)
  store %struct.snd_seq_queue* %11, %struct.snd_seq_queue** %8, align 8
  %12 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %13 = icmp eq %struct.snd_seq_queue* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.snd_seq_queue* @ERR_PTR(i32 %16)
  store %struct.snd_seq_queue* %17, %struct.snd_seq_queue** %4, align 8
  br label %42

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %21 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @queue_use(%struct.snd_seq_queue* %22, i32 %23, i32 1)
  %25 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %26 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %25, i32 0, i32 1
  %27 = call i32 @snd_use_lock_use(i32* %26)
  %28 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %29 = call i64 @queue_list_add(%struct.snd_seq_queue* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %33 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %32, i32 0, i32 1
  %34 = call i32 @snd_use_lock_free(i32* %33)
  %35 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %36 = call i32 @queue_delete(%struct.snd_seq_queue* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.snd_seq_queue* @ERR_PTR(i32 %38)
  store %struct.snd_seq_queue* %39, %struct.snd_seq_queue** %4, align 8
  br label %42

40:                                               ; preds = %18
  %41 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  store %struct.snd_seq_queue* %41, %struct.snd_seq_queue** %4, align 8
  br label %42

42:                                               ; preds = %40, %31, %14
  %43 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  ret %struct.snd_seq_queue* %43
}

declare dso_local %struct.snd_seq_queue* @queue_new(i32, i32) #1

declare dso_local %struct.snd_seq_queue* @ERR_PTR(i32) #1

declare dso_local i32 @queue_use(%struct.snd_seq_queue*, i32, i32) #1

declare dso_local i32 @snd_use_lock_use(i32*) #1

declare dso_local i64 @queue_list_add(%struct.snd_seq_queue*) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @queue_delete(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
