; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_dequeue_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_dequeue_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (%struct.sctp_outq*, %struct.sctp_chunk*)* }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.sctp_stream_out* }
%struct.sctp_stream_out = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_sched_dequeue_done(%struct.sctp_outq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_outq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_stream_out*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_outq* %0, %struct.sctp_outq** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %7, i32 0, i32 1
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = call i32 @list_is_last(i32* %8, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %25 = call i32 @sctp_chunk_stream_no(%struct.sctp_chunk* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.sctp_stream_out* @SCTP_SO(%struct.TYPE_10__* %29, i32 %30)
  store %struct.sctp_stream_out* %31, %struct.sctp_stream_out** %5, align 8
  %32 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %33 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %34 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.sctp_stream_out* %32, %struct.sctp_stream_out** %37, align 8
  br label %52

38:                                               ; preds = %15, %2
  %39 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %40 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store %struct.sctp_stream_out* null, %struct.sctp_stream_out** %43, align 8
  %44 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %45 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (%struct.sctp_outq*, %struct.sctp_chunk*)*, i32 (%struct.sctp_outq*, %struct.sctp_chunk*)** %47, align 8
  %49 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %51 = call i32 %48(%struct.sctp_outq* %49, %struct.sctp_chunk* %50)
  br label %52

52:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local i32 @sctp_chunk_stream_no(%struct.sctp_chunk*) #1

declare dso_local %struct.sctp_stream_out* @SCTP_SO(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
