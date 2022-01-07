; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@HCI_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@HCI_USER_CHANNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_dev_reset(i32 %0) #0 {
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
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* @HCI_UP, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENETDOWN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %13
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %25 = call i64 @hci_dev_test_flag(%struct.hci_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %41

30:                                               ; preds = %22
  %31 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %32 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %33 = call i64 @hci_dev_test_flag(%struct.hci_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %40 = call i32 @hci_dev_do_reset(%struct.hci_dev* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35, %27, %19
  %42 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %43 = call i32 @hci_dev_put(%struct.hci_dev* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_do_reset(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
