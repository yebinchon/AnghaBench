; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_rr.c_sctp_sched_rr_dequeue_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_rr.c_sctp_sched_rr_dequeue_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_stream_out_ext = type { i32 }
%struct.TYPE_4__ = type { %struct.sctp_stream_out_ext* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_outq*, %struct.sctp_chunk*)* @sctp_sched_rr_dequeue_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_sched_rr_dequeue_done(%struct.sctp_outq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_outq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_stream_out_ext*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_outq* %0, %struct.sctp_outq** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %8 = call i32 @sctp_chunk_stream_no(%struct.sctp_chunk* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_4__* @SCTP_SO(i32* %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %15, align 8
  store %struct.sctp_stream_out_ext* %16, %struct.sctp_stream_out_ext** %5, align 8
  %17 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @sctp_sched_rr_next_stream(i32* %20)
  %22 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %22, i32 0, i32 0
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %28 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %5, align 8
  %32 = call i32 @sctp_sched_rr_unsched(i32* %30, %struct.sctp_stream_out_ext* %31)
  br label %33

33:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @sctp_chunk_stream_no(%struct.sctp_chunk*) #1

declare dso_local %struct.TYPE_4__* @SCTP_SO(i32*, i32) #1

declare dso_local i32 @sctp_sched_rr_next_stream(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @sctp_sched_rr_unsched(i32*, %struct.sctp_stream_out_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
