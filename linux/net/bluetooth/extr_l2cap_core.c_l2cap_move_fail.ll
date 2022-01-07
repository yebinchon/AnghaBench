; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_fail.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_chan = type { i64, i32, i32 }

@L2CAP_MOVE_ROLE_INITIATOR = common dso_local global i64 0, align 8
@L2CAP_MR_COLLISION = common dso_local global i64 0, align 8
@L2CAP_MOVE_ROLE_RESPONDER = common dso_local global i64 0, align 8
@L2CAP_MC_UNCONFIRMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32, i64, i64)* @l2cap_move_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_move_fail(%struct.l2cap_conn* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.l2cap_chan* @l2cap_get_chan_by_ident(%struct.l2cap_conn* %10, i32 %11)
  store %struct.l2cap_chan* %12, %struct.l2cap_chan** %9, align 8
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %14 = icmp ne %struct.l2cap_chan* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @l2cap_send_move_chan_cfm_icid(%struct.l2cap_conn* %16, i64 %17)
  br label %50

19:                                               ; preds = %4
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %21 = call i32 @__clear_chan_timer(%struct.l2cap_chan* %20)
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %23 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @L2CAP_MOVE_ROLE_INITIATOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @L2CAP_MR_COLLISION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* @L2CAP_MOVE_ROLE_RESPONDER, align 8
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %43

35:                                               ; preds = %27
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %42 = call i32 @l2cap_move_done(%struct.l2cap_chan* %41)
  br label %43

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %46 = load i32, i32* @L2CAP_MC_UNCONFIRMED, align 4
  %47 = call i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %45, i32 %46)
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %49 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %48)
  br label %50

50:                                               ; preds = %44, %15
  ret void
}

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_ident(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_send_move_chan_cfm_icid(%struct.l2cap_conn*, i64) #1

declare dso_local i32 @__clear_chan_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_move_done(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
