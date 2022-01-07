; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_reset_stat.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_reset_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@HCI_USER_CHANNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_dev_reset_stat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
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
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %24 = call i64 @hci_dev_test_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 0
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  br label %33

33:                                               ; preds = %29, %26, %18
  %34 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %35 = call i32 @hci_dev_put(%struct.hci_dev* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
