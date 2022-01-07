; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@HCI_USER_CHANNEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCI_AUTO_OFF = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_dev_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.hci_dev* @hci_dev_get(i32 %6)
  store %struct.hci_dev* %7, %struct.hci_dev** %4, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %9 = icmp ne %struct.hci_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %21 = call i64 @hci_dev_test_flag(%struct.hci_dev* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %56

26:                                               ; preds = %18, %13
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = load i32, i32* @HCI_AUTO_OFF, align 4
  %29 = call i64 @hci_dev_test_and_clear_flag(%struct.hci_dev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 1
  %34 = call i32 @cancel_delayed_work(i32* %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @flush_workqueue(i32 %38)
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %42 = call i64 @hci_dev_test_flag(%struct.hci_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %46 = load i32, i32* @HCI_MGMT, align 4
  %47 = call i64 @hci_dev_test_flag(%struct.hci_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %51 = load i32, i32* @HCI_BONDABLE, align 4
  %52 = call i32 @hci_dev_set_flag(%struct.hci_dev* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44, %35
  %54 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %55 = call i32 @hci_dev_do_open(%struct.hci_dev* %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %23
  %57 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %58 = call i32 @hci_dev_put(%struct.hci_dev* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_do_open(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
