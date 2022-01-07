; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_accept_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_accept_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i64, %struct.socket* }
%struct.socket = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@rfcomm_l2data_ready = common dso_local global i32 0, align 4
@rfcomm_l2state_change = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_session*)* @rfcomm_accept_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_accept_connection(%struct.rfcomm_session* %0) #0 {
  %2 = alloca %struct.rfcomm_session*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %2, align 8
  %6 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %7 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %6, i32 0, i32 1
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %3, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = call %struct.TYPE_9__* @bt_sk(%struct.TYPE_8__* %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %18)
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = load i32, i32* @O_NONBLOCK, align 4
  %22 = call i32 @kernel_accept(%struct.socket* %20, %struct.socket** %4, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %67

26:                                               ; preds = %17
  %27 = load i32, i32* @rfcomm_l2data_ready, align 4
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @rfcomm_l2state_change, align 4
  %33 = load %struct.socket*, %struct.socket** %4, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = load i32, i32* @BT_OPEN, align 4
  %39 = call %struct.rfcomm_session* @rfcomm_session_add(%struct.socket* %37, i32 %38)
  store %struct.rfcomm_session* %39, %struct.rfcomm_session** %2, align 8
  %40 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %41 = icmp ne %struct.rfcomm_session* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %26
  %43 = load %struct.socket*, %struct.socket** %4, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call %struct.TYPE_7__* @l2cap_pi(%struct.TYPE_8__* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call %struct.TYPE_7__* @l2cap_pi(%struct.TYPE_8__* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @min(i32 %50, i32 %58)
  %60 = sub nsw i64 %59, 5
  %61 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %62 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = call i32 (...) @rfcomm_schedule()
  br label %67

64:                                               ; preds = %26
  %65 = load %struct.socket*, %struct.socket** %4, align 8
  %66 = call i32 @sock_release(%struct.socket* %65)
  br label %67

67:                                               ; preds = %16, %25, %64, %42
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_9__* @bt_sk(%struct.TYPE_8__*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*) #1

declare dso_local i32 @kernel_accept(%struct.socket*, %struct.socket**, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_add(%struct.socket*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local %struct.TYPE_7__* @l2cap_pi(%struct.TYPE_8__*) #1

declare dso_local i32 @rfcomm_schedule(...) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
