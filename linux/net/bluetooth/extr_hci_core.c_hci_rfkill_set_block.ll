; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%p name %s blocked %d\00", align 1
@HCI_USER_CHANNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCI_RFKILLED = common dso_local global i32 0, align 4
@HCI_SETUP = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hci_rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_rfkill_set_block(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hci_dev*
  store %struct.hci_dev* %8, %struct.hci_dev** %6, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %9, i32 %12, i32 %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %16 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %17 = call i64 @hci_dev_test_flag(%struct.hci_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %27 = load i32, i32* @HCI_RFKILLED, align 4
  %28 = call i32 @hci_dev_set_flag(%struct.hci_dev* %26, i32 %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %30 = load i32, i32* @HCI_SETUP, align 4
  %31 = call i64 @hci_dev_test_flag(%struct.hci_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %35 = load i32, i32* @HCI_CONFIG, align 4
  %36 = call i64 @hci_dev_test_flag(%struct.hci_dev* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %40 = call i32 @hci_dev_do_close(%struct.hci_dev* %39)
  br label %41

41:                                               ; preds = %38, %33, %25
  br label %46

42:                                               ; preds = %22
  %43 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %44 = load i32, i32* @HCI_RFKILLED, align 4
  %45 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %41
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i32, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_do_close(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
