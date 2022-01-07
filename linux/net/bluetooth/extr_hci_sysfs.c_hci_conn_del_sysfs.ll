; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sysfs.c_hci_conn_del_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sysfs.c_hci_conn_del_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.device = type { i32 }

@__match_tty = common dso_local global i32 0, align 4
@DPM_ORDER_DEV_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_conn_del_sysfs(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %5 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %6 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %5, i32 0, i32 1
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 0
  %10 = call i32 @device_is_registered(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %22
  %15 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 0
  %17 = load i32, i32* @__match_tty, align 4
  %18 = call %struct.device* @device_find_child(i32* %16, i32* null, i32 %17)
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @DPM_ORDER_DEV_LAST, align 4
  %25 = call i32 @device_move(%struct.device* %23, i32* null, i32 %24)
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @put_device(%struct.device* %26)
  br label %14

28:                                               ; preds = %21
  %29 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 0
  %31 = call i32 @device_del(i32* %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = call i32 @hci_dev_put(%struct.hci_dev* %32)
  br label %34

34:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local %struct.device* @device_find_child(i32*, i32*, i32) #1

declare dso_local i32 @device_move(%struct.device*, i32*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
