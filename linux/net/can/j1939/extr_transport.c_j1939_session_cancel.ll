; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i32, i64, %struct.TYPE_5__, i32, i32, %struct.j1939_priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.j1939_priv = type { i32 }

@J1939_SESSION_WAITING_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_session*, i32)* @j1939_session_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_session_cancel(%struct.j1939_session* %0, i32 %1) #0 {
  %3 = alloca %struct.j1939_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.j1939_priv*, align 8
  store %struct.j1939_session* %0, %struct.j1939_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %7 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %6, i32 0, i32 5
  %8 = load %struct.j1939_priv*, %struct.j1939_priv** %7, align 8
  store %struct.j1939_priv* %8, %struct.j1939_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @j1939_xtp_abort_to_errno(%struct.j1939_priv* %14, i32 %15)
  %17 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %18 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %20 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %19, i32 0, i32 2
  %21 = call i32 @j1939_cb_is_broadcast(%struct.TYPE_5__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @J1939_SESSION_WAITING_ABORT, align 4
  %25 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %26 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %28 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %29 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %28, i32 0, i32 2
  %30 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %31 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %38 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @j1939_xtp_tx_abort(%struct.j1939_priv* %27, %struct.TYPE_5__* %29, i32 %35, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %23, %2
  %44 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %45 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %50 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %53 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @j1939_sk_send_loop_abort(i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @j1939_xtp_abort_to_errno(%struct.j1939_priv*, i32) #1

declare dso_local i32 @j1939_cb_is_broadcast(%struct.TYPE_5__*) #1

declare dso_local i32 @j1939_xtp_tx_abort(%struct.j1939_priv*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @j1939_sk_send_loop_abort(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
