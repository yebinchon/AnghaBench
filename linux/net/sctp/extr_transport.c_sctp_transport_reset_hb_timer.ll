; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_reset_hb_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_reset_hb_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_reset_hb_timer(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  %3 = alloca i64, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %6 = call i64 @sctp_transport_timeout(%struct.sctp_transport* %5)
  %7 = add i64 %4, %6
  store i64 %7, i64* %3, align 8
  %8 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %9 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @time_before(i32 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 1
  %18 = call i32 @timer_pending(%struct.TYPE_3__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %22 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %21, i32 0, i32 1
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %25 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @prandom_u32_max(i32 %26)
  %28 = add i64 %23, %27
  %29 = call i32 @mod_timer(%struct.TYPE_3__* %22, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %33 = call i32 @sctp_transport_hold(%struct.sctp_transport* %32)
  br label %34

34:                                               ; preds = %31, %20, %15
  ret void
}

declare dso_local i64 @sctp_transport_timeout(%struct.sctp_transport*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @prandom_u32_max(i32) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
