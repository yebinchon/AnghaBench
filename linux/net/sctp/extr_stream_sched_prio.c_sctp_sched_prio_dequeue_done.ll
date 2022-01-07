; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_dequeue_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_dequeue_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_stream_priorities = type { i32 }
%struct.sctp_stream_out_ext = type { i32, %struct.sctp_stream_priorities* }
%struct.TYPE_4__ = type { %struct.sctp_stream_out_ext* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_outq*, %struct.sctp_chunk*)* @sctp_sched_prio_dequeue_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_sched_prio_dequeue_done(%struct.sctp_outq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_outq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_stream_priorities*, align 8
  %6 = alloca %struct.sctp_stream_out_ext*, align 8
  %7 = alloca i32, align 4
  store %struct.sctp_outq* %0, %struct.sctp_outq** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %9 = call i32 @sctp_chunk_stream_no(%struct.sctp_chunk* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_4__* @SCTP_SO(i32* %13, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %16, align 8
  store %struct.sctp_stream_out_ext* %17, %struct.sctp_stream_out_ext** %6, align 8
  %18 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %6, align 8
  %19 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %18, i32 0, i32 1
  %20 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %19, align 8
  store %struct.sctp_stream_priorities* %20, %struct.sctp_stream_priorities** %5, align 8
  %21 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %5, align 8
  %22 = call i32 @sctp_sched_prio_next_stream(%struct.sctp_stream_priorities* %21)
  %23 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %6, align 8
  %24 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %23, i32 0, i32 0
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %6, align 8
  %29 = call i32 @sctp_sched_prio_unsched(%struct.sctp_stream_out_ext* %28)
  br label %30

30:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @sctp_chunk_stream_no(%struct.sctp_chunk*) #1

declare dso_local %struct.TYPE_4__* @SCTP_SO(i32*, i32) #1

declare dso_local i32 @sctp_sched_prio_next_stream(%struct.sctp_stream_priorities*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @sctp_sched_prio_unsched(%struct.sctp_stream_out_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
