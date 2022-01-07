; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)* }

@BT_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_MODE_LE_FLOWCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_chan_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_chan_ready(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %4 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BT_CONNECTED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %13 = call i32 @__clear_chan_timer(%struct.l2cap_chan* %12)
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_MODE_LE_FLOWCTL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %28, align 8
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %31 = call i32 %29(%struct.l2cap_chan* %30)
  br label %32

32:                                               ; preds = %24, %19, %9
  %33 = load i64, i64* @BT_CONNECTED, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %39, align 8
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %42 = call i32 %40(%struct.l2cap_chan* %41)
  br label %43

43:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @__clear_chan_timer(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
