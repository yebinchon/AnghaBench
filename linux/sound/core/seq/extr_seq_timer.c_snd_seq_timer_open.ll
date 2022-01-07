; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i64, i32, %struct.snd_timer_instance*, %struct.snd_timer_id }
%struct.snd_timer_instance = type { i32, %struct.snd_seq_queue*, i32 }
%struct.snd_timer_id = type { i64, i64, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sequencer queue %i\00", align 1
@SNDRV_SEQ_TIMER_ALSA = common dso_local global i64 0, align 8
@SNDRV_TIMER_CLASS_SLAVE = common dso_local global i64 0, align 8
@SNDRV_TIMER_SCLASS_SEQUENCER = common dso_local global i8* null, align 8
@SNDRV_TIMER_CLASS_GLOBAL = common dso_local global i64 0, align 8
@SNDRV_TIMER_GLOBAL_SYSTEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"ALSA: seq fatal error: cannot create timer (%i)\0A\00", align 1
@snd_seq_timer_interrupt = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_timer_open(%struct.snd_seq_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_queue*, align 8
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca %struct.snd_seq_timer*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_timer_id, align 8
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %3, align 8
  %9 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %10 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %9, i32 0, i32 1
  %11 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %10, align 8
  store %struct.snd_seq_timer* %11, %struct.snd_seq_timer** %5, align 8
  %12 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %13 = icmp ne %struct.snd_seq_timer* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %129

21:                                               ; preds = %1
  %22 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %23 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %22, i32 0, i32 2
  %24 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %23, align 8
  %25 = icmp ne %struct.snd_timer_instance* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %129

29:                                               ; preds = %21
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %31 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %32 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %36 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SNDRV_SEQ_TIMER_ALSA, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %129

43:                                               ; preds = %29
  %44 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %45 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SNDRV_TIMER_CLASS_SLAVE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8*, i8** @SNDRV_TIMER_SCLASS_SEQUENCER, align 8
  %52 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %53 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %57 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %58 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %57, i32 0, i32 3
  %59 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %60 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @snd_timer_open(%struct.snd_timer_instance** %4, i8* %56, %struct.snd_timer_id* %58, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %55
  %66 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %67 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SNDRV_TIMER_CLASS_SLAVE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %65
  %73 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %74 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SNDRV_TIMER_CLASS_GLOBAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %81 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SNDRV_TIMER_GLOBAL_SYSTEM, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %79, %72
  %87 = call i32 @memset(%struct.snd_timer_id* %8, i32 0, i32 32)
  %88 = load i64, i64* @SNDRV_TIMER_CLASS_GLOBAL, align 8
  %89 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %8, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i8*, i8** @SNDRV_TIMER_SCLASS_SEQUENCER, align 8
  %91 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %8, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %8, i32 0, i32 2
  store i32 -1, i32* %92, align 8
  %93 = load i64, i64* @SNDRV_TIMER_GLOBAL_SYSTEM, align 8
  %94 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %8, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %96 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %97 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_timer_open(%struct.snd_timer_instance** %4, i8* %95, %struct.snd_timer_id* %8, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %86, %79
  br label %101

101:                                              ; preds = %100, %65, %55
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %129

108:                                              ; preds = %101
  %109 = load i32, i32* @snd_seq_timer_interrupt, align 4
  %110 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %111 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %113 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %114 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %113, i32 0, i32 1
  store %struct.snd_seq_queue* %112, %struct.snd_seq_queue** %114, align 8
  %115 = load i32, i32* @SNDRV_TIMER_IFLG_AUTO, align 4
  %116 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %117 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %121 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %120, i32 0, i32 1
  %122 = call i32 @spin_lock_irq(i32* %121)
  %123 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %124 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %125 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %124, i32 0, i32 2
  store %struct.snd_timer_instance* %123, %struct.snd_timer_instance** %125, align 8
  %126 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %5, align 8
  %127 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock_irq(i32* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %108, %104, %40, %26, %18
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_timer_open(%struct.snd_timer_instance**, i8*, %struct.snd_timer_id*, i32) #1

declare dso_local i32 @memset(%struct.snd_timer_id*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
