; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_find_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_find_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32 }

@SNDRV_SEQ_MAX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_queue* @snd_seq_queue_find_name(i8* %0) #0 {
  %2 = alloca %struct.snd_seq_queue*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_queue*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.snd_seq_queue* @queueptr(i32 %11)
  store %struct.snd_seq_queue* %12, %struct.snd_seq_queue** %5, align 8
  %13 = icmp ne %struct.snd_seq_queue* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %16 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strncmp(i32 %17, i8* %18, i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  store %struct.snd_seq_queue* %22, %struct.snd_seq_queue** %2, align 8
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %25 = call i32 @queuefree(%struct.snd_seq_queue* %24)
  br label %26

26:                                               ; preds = %23, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %2, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  ret %struct.snd_seq_queue* %32
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
