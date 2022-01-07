; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_report_iftsn.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_report_iftsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*, i64)* @sctp_report_iftsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_report_iftsn(%struct.sctp_ulpq* %0, i64 %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca i64, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %6 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @sctp_tsnmap_skip(i32* %9, i64 %10)
  %12 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @sctp_intl_reasm_flushtsn(%struct.sctp_ulpq* %12, i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i64 @sctp_tsnmap_get_max_tsn_seen(i32* %20)
  %22 = icmp eq i64 %15, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @sctp_intl_abort_pd(%struct.sctp_ulpq* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @sctp_tsnmap_skip(i32*, i64) #1

declare dso_local i32 @sctp_intl_reasm_flushtsn(%struct.sctp_ulpq*, i64) #1

declare dso_local i64 @sctp_tsnmap_get_max_tsn_seen(i32*) #1

declare dso_local i32 @sctp_intl_abort_pd(%struct.sctp_ulpq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
