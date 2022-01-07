; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_update_background_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_update_background_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@HCI_UP = common dso_local global i32 0, align 4
@HCI_INIT = common dso_local global i32 0, align 4
@HCI_SETUP = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@HCI_AUTO_OFF = common dso_local global i32 0, align 4
@HCI_UNREGISTER = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@DISCOVERY_STOPPED = common dso_local global i64 0, align 8
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s stopping background scanning\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s starting background scanning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @__hci_update_background_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hci_update_background_scan(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %4 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %5 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %4, i32 0, i32 0
  %6 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  store %struct.hci_dev* %6, %struct.hci_dev** %3, align 8
  %7 = load i32, i32* @HCI_UP, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 4
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @HCI_INIT, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 4
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load i32, i32* @HCI_SETUP, align 4
  %21 = call i64 @hci_dev_test_flag(%struct.hci_dev* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load i32, i32* @HCI_CONFIG, align 4
  %26 = call i64 @hci_dev_test_flag(%struct.hci_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load i32, i32* @HCI_AUTO_OFF, align 4
  %31 = call i64 @hci_dev_test_flag(%struct.hci_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = load i32, i32* @HCI_UNREGISTER, align 4
  %36 = call i64 @hci_dev_test_flag(%struct.hci_dev* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28, %23, %18, %12, %1
  br label %98

39:                                               ; preds = %33
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load i32, i32* @HCI_LE_ENABLED, align 4
  %42 = call i64 @hci_dev_test_flag(%struct.hci_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %98

45:                                               ; preds = %39
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DISCOVERY_STOPPED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %98

53:                                               ; preds = %45
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = call i32 @hci_discovery_filter_clear(%struct.hci_dev* %54)
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 2
  %58 = call i64 @list_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %53
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 1
  %63 = call i64 @list_empty(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = load i32, i32* @HCI_LE_SCAN, align 4
  %68 = call i64 @hci_dev_test_flag(%struct.hci_dev* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %98

71:                                               ; preds = %65
  %72 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %73 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %72)
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %98

78:                                               ; preds = %60, %53
  %79 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %80 = call i64 @hci_lookup_le_connect(%struct.hci_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %98

83:                                               ; preds = %78
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = load i32, i32* @HCI_LE_SCAN, align 4
  %86 = call i64 @hci_dev_test_flag(%struct.hci_dev* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %90 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %93 = call i32 @hci_req_add_le_passive_scan(%struct.hci_request* %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %38, %44, %52, %70, %82, %91, %71
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_discovery_filter_clear(%struct.hci_dev*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @hci_req_add_le_scan_disable(%struct.hci_request*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_add_le_passive_scan(%struct.hci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
