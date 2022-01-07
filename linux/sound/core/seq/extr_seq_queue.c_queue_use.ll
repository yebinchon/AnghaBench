; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_use.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_queue*, i32, i32)* @queue_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_use(%struct.snd_seq_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_seq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %12 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @test_and_set_bit(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %18 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %9
  br label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_and_clear_bit(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %31 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %37 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_seq_timer_defaults(i32 %51)
  br label %53

53:                                               ; preds = %48, %43, %40
  %54 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %55 = call i32 @snd_seq_timer_open(%struct.snd_seq_queue* %54)
  br label %59

56:                                               ; preds = %35
  %57 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %58 = call i32 @snd_seq_timer_close(%struct.snd_seq_queue* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @snd_seq_timer_defaults(i32) #1

declare dso_local i32 @snd_seq_timer_open(%struct.snd_seq_queue*) #1

declare dso_local i32 @snd_seq_timer_close(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
