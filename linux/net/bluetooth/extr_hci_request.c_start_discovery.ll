; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_start_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_start_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s type %u\00", align 1
@HCI_INQUIRY = common dso_local global i32 0, align 4
@bredr_inquiry = common dso_local global i32 0, align 4
@DISCOV_BREDR_INQUIRY_LEN = common dso_local global i32 0, align 4
@HCI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@HCI_QUIRK_SIMULTANEOUS_DISCOVERY = common dso_local global i32 0, align 4
@DISCOV_LE_TIMEOUT = common dso_local global i32 0, align 4
@interleaved_discov = common dso_local global i32 0, align 4
@DISCOV_LE_SCAN_INT = common dso_local global i32 0, align 4
@active_scan = common dso_local global i32 0, align 4
@HCI_ERROR_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s timeout %u ms\00", align 1
@HCI_QUIRK_STRICT_DUPLICATE_FILTER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64*)* @start_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_discovery(%struct.hci_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %67 [
    i32 130, label %18
    i32 129, label %31
    i32 128, label %58
  ]

18:                                               ; preds = %2
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load i32, i32* @HCI_INQUIRY, align 4
  %21 = call i32 @hci_dev_test_flag(%struct.hci_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load i32, i32* @bredr_inquiry, align 4
  %26 = load i32, i32* @DISCOV_BREDR_INQUIRY_LEN, align 4
  %27 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %28 = load i64*, i64** %4, align 8
  %29 = call i32 @hci_req_sync(%struct.hci_dev* %24, i32 %25, i32 %26, i32 %27, i64* %28)
  br label %30

30:                                               ; preds = %23, %18
  br label %110

31:                                               ; preds = %2
  %32 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 3
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* @DISCOV_LE_TIMEOUT, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load i32, i32* @interleaved_discov, align 4
  %42 = load i32, i32* @DISCOV_LE_SCAN_INT, align 4
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %45 = load i64*, i64** %4, align 8
  %46 = call i32 @hci_req_sync(%struct.hci_dev* %40, i32 %41, i32 %43, i32 %44, i64* %45)
  br label %70

47:                                               ; preds = %31
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @msecs_to_jiffies(i32 %50)
  store i64 %51, i64* %5, align 8
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = load i32, i32* @active_scan, align 4
  %54 = load i32, i32* @DISCOV_LE_SCAN_INT, align 4
  %55 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %56 = load i64*, i64** %4, align 8
  %57 = call i32 @hci_req_sync(%struct.hci_dev* %52, i32 %53, i32 %54, i32 %55, i64* %56)
  br label %70

58:                                               ; preds = %2
  %59 = load i32, i32* @DISCOV_LE_TIMEOUT, align 4
  %60 = call i64 @msecs_to_jiffies(i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @active_scan, align 4
  %63 = load i32, i32* @DISCOV_LE_SCAN_INT, align 4
  %64 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %65 = load i64*, i64** %4, align 8
  %66 = call i32 @hci_req_sync(%struct.hci_dev* %61, i32 %62, i32 %63, i32 %64, i64* %65)
  br label %70

67:                                               ; preds = %2
  %68 = load i64, i64* @HCI_ERROR_UNSPECIFIED, align 8
  %69 = load i64*, i64** %4, align 8
  store i64 %68, i64* %69, align 8
  br label %110

70:                                               ; preds = %58, %47, %37
  %71 = load i64*, i64** %4, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %110

75:                                               ; preds = %70
  %76 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @jiffies_to_msecs(i64 %79)
  %81 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %83, i32 0, i32 3
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %75
  %88 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %87, %75
  %103 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %104 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @queue_delayed_work(i32 %105, i32* %107, i64 %108)
  br label %110

110:                                              ; preds = %102, %74, %67, %30
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_sync(%struct.hci_dev*, i32, i32, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
