; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_seq_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_seq_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_timer*)* @seq_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_timer_start(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %3, align 8
  %4 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %5 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %13 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %18 = call i32 @seq_timer_stop(%struct.snd_seq_timer* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %21 = call i32 @seq_timer_reset(%struct.snd_seq_timer* %20)
  %22 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %23 = call i64 @initialize_timer(%struct.snd_seq_timer* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %30 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %33 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_timer_start(i32 %31, i32 %34)
  %36 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %37 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %39 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %38, i32 0, i32 1
  %40 = call i32 @ktime_get_ts64(i32* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %25, %8
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @seq_timer_stop(%struct.snd_seq_timer*) #1

declare dso_local i32 @seq_timer_reset(%struct.snd_seq_timer*) #1

declare dso_local i64 @initialize_timer(%struct.snd_seq_timer*) #1

declare dso_local i32 @snd_timer_start(i32, i32) #1

declare dso_local i32 @ktime_get_ts64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
