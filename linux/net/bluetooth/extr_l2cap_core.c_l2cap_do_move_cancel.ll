; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_move_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_move_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32 }

@L2CAP_MOVE_ROLE_RESPONDER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@L2CAP_MR_BAD_ID = common dso_local global i32 0, align 4
@L2CAP_MR_NOT_ALLOWED = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_NONE = common dso_local global i64 0, align 8
@L2CAP_MOVE_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_do_move_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_do_move_cancel(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @L2CAP_MOVE_ROLE_RESPONDER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @L2CAP_MR_BAD_ID, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @L2CAP_MR_NOT_ALLOWED, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i64, i64* @L2CAP_MOVE_ROLE_NONE, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @L2CAP_MOVE_STABLE, align 4
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %32 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %31)
  ret void
}

declare dso_local i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
