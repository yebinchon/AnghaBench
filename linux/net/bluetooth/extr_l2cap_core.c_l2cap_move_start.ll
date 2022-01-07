; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@AMP_ID_BREDR = common dso_local global i64 0, align 8
@BT_CHANNEL_POLICY_AMP_PREFERRED = common dso_local global i64 0, align 8
@L2CAP_MOVE_ROLE_INITIATOR = common dso_local global i8* null, align 8
@L2CAP_MOVE_WAIT_PREPARE = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_RSP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_move_start(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %4 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %3)
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AMP_ID_BREDR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BT_CHANNEL_POLICY_AMP_PREFERRED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %37

17:                                               ; preds = %10
  %18 = load i8*, i8** @L2CAP_MOVE_ROLE_INITIATOR, align 8
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @L2CAP_MOVE_WAIT_PREPARE, align 4
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %23 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  br label %37

24:                                               ; preds = %1
  %25 = load i8*, i8** @L2CAP_MOVE_ROLE_INITIATOR, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @L2CAP_MOVE_WAIT_RSP_SUCCESS, align 4
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %32 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %34 = call i32 @l2cap_move_setup(%struct.l2cap_chan* %33)
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %36 = call i32 @l2cap_send_move_chan_req(%struct.l2cap_chan* %35, i32 0)
  br label %37

37:                                               ; preds = %16, %24, %17
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_move_setup(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_move_chan_req(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
