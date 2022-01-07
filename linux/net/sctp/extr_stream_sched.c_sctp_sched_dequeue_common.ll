; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_dequeue_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_dequeue_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_sched_dequeue_common(%struct.sctp_outq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_outq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_outq* %0, %struct.sctp_outq** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 2
  %7 = call i32 @list_del_init(i32* %6)
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 1
  %10 = call i32 @list_del_init(i32* %9)
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
