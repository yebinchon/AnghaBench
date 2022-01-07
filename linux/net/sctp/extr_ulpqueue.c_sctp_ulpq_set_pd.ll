; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_set_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_set_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*)* @sctp_ulpq_set_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ulpq_set_pd(%struct.sctp_ulpq* %0) #0 {
  %2 = alloca %struct.sctp_ulpq*, align 8
  %3 = alloca %struct.sctp_sock*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %2, align 8
  %4 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sctp_sock* @sctp_sk(i32 %9)
  store %struct.sctp_sock* %10, %struct.sctp_sock** %3, align 8
  %11 = load %struct.sctp_sock*, %struct.sctp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %11, i32 0, i32 0
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  ret void
}

declare dso_local %struct.sctp_sock* @sctp_sk(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
