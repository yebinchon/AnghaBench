; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_tempo_ppq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_tempo_ppq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ALSA: seq: cannot change ppq of a running timer\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_timer_set_tempo_ppq(%struct.snd_seq_timer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_timer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %11 = icmp ne %struct.snd_seq_timer* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %22
  %29 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %30 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %29, i32 0, i32 2
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %34 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %40 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %45 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %44, i32 0, i32 2
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %37, %28
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %54 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %60 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br label %63

63:                                               ; preds = %57, %51
  %64 = phi i1 [ true, %51 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %68 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %71 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %76 = call i32 @snd_seq_timer_set_tick_resolution(%struct.snd_seq_timer* %75)
  br label %77

77:                                               ; preds = %74, %63
  %78 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %79 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %78, i32 0, i32 2
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %43, %25, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @snd_seq_timer_set_tick_resolution(%struct.snd_seq_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
