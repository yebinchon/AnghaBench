; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dlc %p dev %p err %d\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i32)* @rfcomm_dev_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_state_change(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 1
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  store %struct.rfcomm_dev* %8, %struct.rfcomm_dev** %5, align 8
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %10 = icmp ne %struct.rfcomm_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %14 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %13, %struct.rfcomm_dev* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BT_CONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %27 = call i32 @rfcomm_reparent_device(%struct.rfcomm_dev* %26)
  %28 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @wake_up_interruptible(i32* %30)
  br label %43

32:                                               ; preds = %12
  %33 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %34 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BT_CLOSED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %39, i32 0, i32 1
  %41 = call i32 @tty_port_tty_hangup(%struct.TYPE_2__* %40, i32 0)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %11, %42, %25
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, %struct.rfcomm_dev*, i32) #1

declare dso_local i32 @rfcomm_reparent_device(%struct.rfcomm_dev*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_port_tty_hangup(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
