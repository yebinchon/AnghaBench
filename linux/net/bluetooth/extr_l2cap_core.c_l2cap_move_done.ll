; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@L2CAP_MOVE_STABLE = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_NONE = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@L2CAP_EV_EXPLICIT_POLL = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_WAIT_F = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_WAIT_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_move_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_move_done(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7)
  %9 = load i32, i32* @L2CAP_MOVE_STABLE, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @L2CAP_MOVE_ROLE_NONE, align 4
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %34

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  switch i32 %22, label %34 [
    i32 129, label %23
    i32 128, label %30
  ]

23:                                               ; preds = %21
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %25 = load i32, i32* @L2CAP_EV_EXPLICIT_POLL, align 4
  %26 = call i32 @l2cap_tx(%struct.l2cap_chan* %24, i32* null, i32* null, i32 %25)
  %27 = load i32, i32* @L2CAP_RX_STATE_WAIT_F, align 4
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @L2CAP_RX_STATE_WAIT_P, align 4
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %20, %21, %30, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_tx(%struct.l2cap_chan*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
