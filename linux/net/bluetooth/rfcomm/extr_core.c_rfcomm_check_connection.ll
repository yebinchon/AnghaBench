; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_check_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_check_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%p state %ld\00", align 1
@BT_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (%struct.rfcomm_session*)* @rfcomm_check_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_check_connection(%struct.rfcomm_session* %0) #0 {
  %2 = alloca %struct.rfcomm_session*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %2, align 8
  %4 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %5 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %10 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %11 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %9, i32 %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %45 [
    i32 128, label %17
    i32 129, label %39
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @BT_CONNECT, align 4
  %19 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %20 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.TYPE_6__* @l2cap_pi(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call %struct.TYPE_6__* @l2cap_pi(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @min(i32 %26, i32 %32)
  %34 = sub nsw i32 %33, 5
  %35 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %36 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %38 = call i32 @rfcomm_send_sabm(%struct.rfcomm_session* %37, i32 0)
  br label %45

39:                                               ; preds = %1
  %40 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.rfcomm_session* @rfcomm_session_close(%struct.rfcomm_session* %40, i32 %43)
  store %struct.rfcomm_session* %44, %struct.rfcomm_session** %2, align 8
  br label %45

45:                                               ; preds = %1, %39, %17
  %46 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  ret %struct.rfcomm_session* %46
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_6__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @rfcomm_send_sabm(%struct.rfcomm_session*, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_close(%struct.rfcomm_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
