; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_init_sid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_init_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i32 }
%struct.sctp_sched_ops = type { i32 (%struct.sctp_stream*, i32, i32)* }
%struct.sctp_stream_out_ext = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_stream_out_ext* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sched_init_sid(%struct.sctp_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_sched_ops*, align 8
  %8 = alloca %struct.sctp_stream_out_ext*, align 8
  store %struct.sctp_stream* %0, %struct.sctp_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %10 = call %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream* %9)
  store %struct.sctp_sched_ops* %10, %struct.sctp_sched_ops** %7, align 8
  %11 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_2__* @SCTP_SO(%struct.sctp_stream* %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %14, align 8
  store %struct.sctp_stream_out_ext* %15, %struct.sctp_stream_out_ext** %8, align 8
  %16 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %8, align 8
  %17 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %7, align 8
  %20 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.sctp_stream*, i32, i32)*, i32 (%struct.sctp_stream*, i32, i32)** %20, align 8
  %22 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %21(%struct.sctp_stream* %22, i32 %23, i32 %24)
  ret i32 %25
}

declare dso_local %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream*) #1

declare dso_local %struct.TYPE_2__* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
