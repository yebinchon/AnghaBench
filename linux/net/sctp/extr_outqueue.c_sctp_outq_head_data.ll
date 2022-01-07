; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_head_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_head_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_stream_out_ext = type { i32 }
%struct.TYPE_6__ = type { %struct.sctp_stream_out_ext* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_outq*, %struct.sctp_chunk*)* @sctp_outq_head_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_outq_head_data(%struct.sctp_outq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_outq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_stream_out_ext*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_outq* %0, %struct.sctp_outq** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %7, i32 0, i32 2
  %9 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %9, i32 0, i32 2
  %11 = call i32 @list_add(i32* %8, i32* %10)
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %24 = call i32 @sctp_chunk_stream_no(%struct.sctp_chunk* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sctp_outq*, %struct.sctp_outq** %3, align 8
  %26 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_6__* @SCTP_SO(i32* %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %31, align 8
  store %struct.sctp_stream_out_ext* %32, %struct.sctp_stream_out_ext** %5, align 8
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 0
  %35 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sctp_chunk_stream_no(%struct.sctp_chunk*) #1

declare dso_local %struct.TYPE_6__* @SCTP_SO(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
