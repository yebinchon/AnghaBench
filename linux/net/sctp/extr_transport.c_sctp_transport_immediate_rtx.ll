; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_immediate_rtx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_immediate_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCTP_RTXR_T3_RTX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_immediate_rtx(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %3 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %3, i32 0, i32 1
  %5 = call i64 @del_timer(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %9 = call i32 @sctp_transport_put(%struct.sctp_transport* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %16 = load i32, i32* @SCTP_RTXR_T3_RTX, align 4
  %17 = call i32 @sctp_retransmit(i32* %14, %struct.sctp_transport* %15, i32 %16)
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %19 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %18, i32 0, i32 1
  %20 = call i32 @timer_pending(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %10
  %23 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %24 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %27 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @mod_timer(i32* %24, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %34 = call i32 @sctp_transport_hold(%struct.sctp_transport* %33)
  br label %35

35:                                               ; preds = %32, %22
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_retransmit(i32*, %struct.sctp_transport*, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
