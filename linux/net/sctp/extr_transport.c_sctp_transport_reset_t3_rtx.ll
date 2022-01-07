; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_reset_t3_rtx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_reset_t3_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_reset_t3_rtx(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %3 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %3, i32 0, i32 1
  %5 = call i32 @timer_pending(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %9 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %8, i32 0, i32 1
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = call i32 @mod_timer(i32* %9, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %19 = call i32 @sctp_transport_hold(%struct.sctp_transport* %18)
  br label %20

20:                                               ; preds = %17, %7
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
