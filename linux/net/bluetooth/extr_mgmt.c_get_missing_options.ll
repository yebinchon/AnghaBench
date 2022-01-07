; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_missing_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_missing_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }

@HCI_QUIRK_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@HCI_EXT_CONFIGURED = common dso_local global i32 0, align 4
@MGMT_OPTION_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@HCI_QUIRK_INVALID_BDADDR = common dso_local global i32 0, align 4
@HCI_QUIRK_USE_BDADDR_PROPERTY = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@MGMT_OPTION_PUBLIC_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @get_missing_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_missing_options(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @HCI_QUIRK_EXTERNAL_CONFIG, align 4
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 1
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %11 = load i32, i32* @HCI_EXT_CONFIGURED, align 4
  %12 = call i32 @hci_dev_test_flag(%struct.hci_dev* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @MGMT_OPTION_EXTERNAL_CONFIG, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %9, %1
  %19 = load i32, i32* @HCI_QUIRK_INVALID_BDADDR, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @HCI_QUIRK_USE_BDADDR_PROPERTY, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24, %18
  %31 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* @BDADDR_ANY, align 4
  %34 = call i32 @bacmp(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @MGMT_OPTION_PUBLIC_ADDRESS, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %30, %24
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  ret i32 %42
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
