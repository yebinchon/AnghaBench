; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32 }
%struct.snd_seq_event = type { i32, %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_queue*, %struct.snd_seq_event*, i32, i32)* @snd_seq_queue_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_seq_queue_process_event(%struct.snd_seq_queue* %0, %struct.snd_seq_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_seq_queue*, align 8
  %6 = alloca %struct.snd_seq_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %5, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %10 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %147 [
    i32 130, label %12
    i32 134, label %41
    i32 129, label %54
    i32 128, label %64
    i32 132, label %80
    i32 131, label %100
    i32 133, label %120
  ]

12:                                               ; preds = %4
  %13 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %14 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %17 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_seq_prioq_leave(i32 %15, i32 %19, i32 1)
  %21 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %22 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %25 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_seq_prioq_leave(i32 %23, i32 %27, i32 1)
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_seq_timer_start(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %12
  %35 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %36 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %35, %struct.snd_seq_event* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %12
  br label %147

41:                                               ; preds = %4
  %42 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %43 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_seq_timer_continue(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %49 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %48, %struct.snd_seq_event* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  br label %147

54:                                               ; preds = %4
  %55 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %56 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_seq_timer_stop(i32 %57)
  %59 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %60 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %59, %struct.snd_seq_event* %60, i32 %61, i32 %62)
  br label %147

64:                                               ; preds = %4
  %65 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %66 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %69 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @snd_seq_timer_set_tempo(i32 %67, i32 %73)
  %75 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %76 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %75, %struct.snd_seq_event* %76, i32 %77, i32 %78)
  br label %147

80:                                               ; preds = %4
  %81 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %82 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %85 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @snd_seq_timer_set_position_tick(i32 %83, i32 %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %95 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %94, %struct.snd_seq_event* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %80
  br label %147

100:                                              ; preds = %4
  %101 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %102 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %105 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @snd_seq_timer_set_position_time(i32 %103, i32 %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %100
  %114 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %115 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %114, %struct.snd_seq_event* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %100
  br label %147

120:                                              ; preds = %4
  %121 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %122 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %125 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %132 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @snd_seq_timer_set_skew(i32 %123, i32 %130, i32 %137)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %120
  %141 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %142 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @queue_broadcast_event(%struct.snd_seq_queue* %141, %struct.snd_seq_event* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %120
  br label %147

147:                                              ; preds = %4, %146, %119, %99, %64, %54, %53, %40
  ret void
}

declare dso_local i32 @snd_seq_prioq_leave(i32, i32, i32) #1

declare dso_local i32 @snd_seq_timer_start(i32) #1

declare dso_local i32 @queue_broadcast_event(%struct.snd_seq_queue*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_timer_continue(i32) #1

declare dso_local i32 @snd_seq_timer_stop(i32) #1

declare dso_local i32 @snd_seq_timer_set_tempo(i32, i32) #1

declare dso_local i32 @snd_seq_timer_set_position_tick(i32, i32) #1

declare dso_local i32 @snd_seq_timer_set_position_time(i32, i32) #1

declare dso_local i32 @snd_seq_timer_set_skew(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
