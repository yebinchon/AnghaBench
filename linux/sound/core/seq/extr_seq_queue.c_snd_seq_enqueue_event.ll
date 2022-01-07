; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_enqueue_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_enqueue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event_cell = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_seq_queue = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_MODE_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_MODE_REL = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_STAMP_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_MODE_ABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_enqueue_event(%struct.snd_seq_event_cell* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_event_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_seq_queue*, align 8
  store %struct.snd_seq_event_cell* %0, %struct.snd_seq_event_cell** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %12 = icmp ne %struct.snd_seq_event_cell* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %119

20:                                               ; preds = %3
  %21 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %22 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.snd_seq_queue* @queueptr(i32 %25)
  store %struct.snd_seq_queue* %26, %struct.snd_seq_queue** %10, align 8
  %27 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %28 = icmp eq %struct.snd_seq_queue* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %119

32:                                               ; preds = %20
  %33 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %34 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SNDRV_SEQ_TIME_MODE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SNDRV_SEQ_TIME_MODE_REL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %32
  %42 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %43 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %71 [
    i32 128, label %48
    i32 129, label %61
  ]

48:                                               ; preds = %41
  %49 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %50 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %56 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %71

61:                                               ; preds = %41
  %62 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %63 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %67 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @snd_seq_inc_real_time(i32* %65, i32* %69)
  br label %71

71:                                               ; preds = %41, %61, %48
  %72 = load i32, i32* @SNDRV_SEQ_TIME_MODE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %75 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @SNDRV_SEQ_TIME_MODE_ABS, align 4
  %80 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %81 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %71, %32
  %86 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %87 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_MASK, align 4
  %91 = and i32 %89, %90
  switch i32 %91, label %99 [
    i32 128, label %92
    i32 129, label %98
  ]

92:                                               ; preds = %85
  %93 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %94 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %97 = call i32 @snd_seq_prioq_cell_in(i32 %95, %struct.snd_seq_event_cell* %96)
  store i32 %97, i32* %9, align 4
  br label %105

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %85, %98
  %100 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %101 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %104 = call i32 @snd_seq_prioq_cell_in(i32 %102, %struct.snd_seq_event_cell* %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %110 = call i32 @queuefree(%struct.snd_seq_queue* %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %119

112:                                              ; preds = %105
  %113 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @snd_seq_check_queue(%struct.snd_seq_queue* %113, i32 %114, i32 %115)
  %117 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, align 8
  %118 = call i32 @queuefree(%struct.snd_seq_queue* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %108, %29, %17
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @snd_seq_inc_real_time(i32*, i32*) #1

declare dso_local i32 @snd_seq_prioq_cell_in(i32, %struct.snd_seq_event_cell*) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

declare dso_local i32 @snd_seq_check_queue(%struct.snd_seq_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
