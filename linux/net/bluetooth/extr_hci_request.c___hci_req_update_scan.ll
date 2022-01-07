; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@SCAN_PAGE = common dso_local global i32 0, align 4
@SCAN_DISABLED = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@SCAN_INQUIRY = common dso_local global i32 0, align 4
@HCI_PSCAN = common dso_local global i32 0, align 4
@HCI_ISCAN = common dso_local global i32 0, align 4
@HCI_OP_WRITE_SCAN_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_req_update_scan(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %10 = call i64 @hci_dev_test_flag(%struct.hci_dev* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = call i32 @hdev_is_powered(%struct.hci_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %76

18:                                               ; preds = %13
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i64 @mgmt_powering_down(%struct.hci_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %76

23:                                               ; preds = %18
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load i32, i32* @HCI_CONNECTABLE, align 4
  %26 = call i64 @hci_dev_test_flag(%struct.hci_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = call i64 @disconnected_whitelist_entries(%struct.hci_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %23
  %33 = load i32, i32* @SCAN_PAGE, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SCAN_DISABLED, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %39 = call i64 @hci_dev_test_flag(%struct.hci_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @SCAN_INQUIRY, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* @HCI_PSCAN, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SCAN_PAGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = icmp eq i32 %49, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %45
  %59 = load i32, i32* @HCI_ISCAN, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SCAN_INQUIRY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %76

72:                                               ; preds = %58, %45
  %73 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %74 = load i32, i32* @HCI_OP_WRITE_SCAN_ENABLE, align 4
  %75 = call i32 @hci_req_add(%struct.hci_request* %73, i32 %74, i32 1, i32* %4)
  br label %76

76:                                               ; preds = %72, %71, %22, %17, %12
  ret void
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @mgmt_powering_down(%struct.hci_dev*) #1

declare dso_local i64 @disconnected_whitelist_entries(%struct.hci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
