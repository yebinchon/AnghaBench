; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_init_sid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_init_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_stream*, i32, i32)* @sctp_sched_prio_init_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sched_prio_init_sid(%struct.sctp_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sctp_stream* %0, %struct.sctp_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %7, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sctp_sched_prio_set(%struct.sctp_stream* %14, i32 %15, i32 0, i32 %16)
  ret i32 %17
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local i32 @sctp_sched_prio_set(%struct.sctp_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
