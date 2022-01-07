; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_reparent_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_reparent_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev = type { i32, i32, i32 }
%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i32 }

@BDADDR_BREDR = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@DPM_ORDER_DEV_AFTER_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dev*)* @rfcomm_reparent_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_reparent_device(%struct.rfcomm_dev* %0) #0 {
  %2 = alloca %struct.rfcomm_dev*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  store %struct.rfcomm_dev* %0, %struct.rfcomm_dev** %2, align 8
  %5 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %5, i32 0, i32 1
  %7 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %7, i32 0, i32 2
  %9 = load i32, i32* @BDADDR_BREDR, align 4
  %10 = call %struct.hci_dev* @hci_get_route(i32* %6, i32* %8, i32 %9)
  store %struct.hci_dev* %10, %struct.hci_dev** %3, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = icmp ne %struct.hci_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = call i32 @hci_dev_lock(%struct.hci_dev* %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* @ACL_LINK, align 4
  %19 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %19, i32 0, i32 1
  %21 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %17, i32 %18, i32* %20)
  store %struct.hci_conn* %21, %struct.hci_conn** %4, align 8
  %22 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %23 = icmp ne %struct.hci_conn* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 0
  %27 = call i64 @device_is_registered(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %31 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  %35 = load i32, i32* @DPM_ORDER_DEV_AFTER_PARENT, align 4
  %36 = call i32 @device_move(i32 %32, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %24, %14
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = call i32 @hci_dev_unlock(%struct.hci_dev* %38)
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = call i32 @hci_dev_put(%struct.hci_dev* %40)
  br label %42

42:                                               ; preds = %37, %13
  ret void
}

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_move(i32, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
