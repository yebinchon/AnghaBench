; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_active_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_active_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_LE_ADV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@ADDR_LE_DEV_PUBLIC = common dso_local global i32 0, align 4
@LE_SCAN_ACTIVE = common dso_local global i32 0, align 4
@DISCOV_LE_SCAN_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @active_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_scan(%struct.hci_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %12 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %11, i32 0, i32 0
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %7, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %19 = load i32, i32* @HCI_LE_ADV, align 4
  %20 = call i64 @hci_dev_test_flag(%struct.hci_dev* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %26 = call i64 @hci_lookup_le_connect(%struct.hci_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = call i32 @hci_dev_unlock(%struct.hci_dev* %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %35 = call i32 @cancel_adv_timeout(%struct.hci_dev* %34)
  %36 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %37 = call i32 @hci_dev_unlock(%struct.hci_dev* %36)
  %38 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %39 = call i32 @__hci_req_disable_advertising(%struct.hci_request* %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %42 = load i32, i32* @HCI_LE_SCAN, align 4
  %43 = call i64 @hci_dev_test_flag(%struct.hci_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %47 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %51 = call i32 @scan_use_rpa(%struct.hci_dev* %50)
  %52 = call i32 @hci_update_random_address(%struct.hci_request* %49, i32 1, i32 %51, i32* %8)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @ADDR_LE_DEV_PUBLIC, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %59 = load i32, i32* @LE_SCAN_ACTIVE, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @DISCOV_LE_SCAN_WIN, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @hci_req_start_scan(%struct.hci_request* %58, i32 %59, i64 %60, i32 %61, i32 %62, i32 0)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %28
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @cancel_adv_timeout(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_disable_advertising(%struct.hci_request*) #1

declare dso_local i32 @hci_req_add_le_scan_disable(%struct.hci_request*) #1

declare dso_local i32 @hci_update_random_address(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @scan_use_rpa(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_start_scan(%struct.hci_request*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
