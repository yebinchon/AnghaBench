; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_dequeue_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_dequeue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_outq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_outq*)* @sctp_outq_dequeue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_outq_dequeue_data(%struct.sctp_outq* %0) #0 {
  %2 = alloca %struct.sctp_outq*, align 8
  store %struct.sctp_outq* %0, %struct.sctp_outq** %2, align 8
  %3 = load %struct.sctp_outq*, %struct.sctp_outq** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to %struct.sctp_chunk* (%struct.sctp_outq*)**
  %8 = load %struct.sctp_chunk* (%struct.sctp_outq*)*, %struct.sctp_chunk* (%struct.sctp_outq*)** %7, align 8
  %9 = load %struct.sctp_outq*, %struct.sctp_outq** %2, align 8
  %10 = call %struct.sctp_chunk* %8(%struct.sctp_outq* %9)
  ret %struct.sctp_chunk* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
