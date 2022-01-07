; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_outq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_outq = type { i32, i32, i32, i32, i32, %struct.sctp_association* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_outq_init(%struct.sctp_association* %0, %struct.sctp_outq* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_outq*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_outq* %1, %struct.sctp_outq** %4, align 8
  %5 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %6 = call i32 @memset(%struct.sctp_outq* %5, i32 0, i32 32)
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %8, i32 0, i32 5
  store %struct.sctp_association* %7, %struct.sctp_association** %9, align 8
  %10 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %10, i32 0, i32 4
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %19, i32 0, i32 1
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_4__* @sctp_sk(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sctp_sched_set_sched(%struct.sctp_association* %25, i32 %32)
  ret void
}

declare dso_local i32 @memset(%struct.sctp_outq*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sctp_sched_set_sched(%struct.sctp_association*, i32) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
