; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_clear_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_clear_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_ulpq*)* @sctp_ulpq_clear_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_ulpq_clear_pd(%struct.sctp_ulpq* %0) #0 {
  %2 = alloca %struct.sctp_ulpq*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %2, align 8
  %3 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %6 = call i32 @sctp_ulpq_reasm_drain(%struct.sctp_ulpq* %5)
  %7 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %8 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %14 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @sctp_clear_pd(i32 %12, %struct.TYPE_4__* %15)
  ret i32 %16
}

declare dso_local i32 @sctp_ulpq_reasm_drain(%struct.sctp_ulpq*) #1

declare dso_local i32 @sctp_clear_pd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
