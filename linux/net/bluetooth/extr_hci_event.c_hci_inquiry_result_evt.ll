; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_inquiry_result_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_inquiry_result_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.inquiry_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inquiry_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s num_rsp %d\00", align 1
@HCI_PERIODIC_INQ = common dso_local global i32 0, align 4
@HCI_RSSI_INVALID = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_inquiry_result_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_inquiry_result_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inquiry_data, align 4
  %6 = alloca %struct.inquiry_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.inquiry_info*
  store %struct.inquiry_info* %14, %struct.inquiry_info** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %90

28:                                               ; preds = %2
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load i32, i32* @HCI_PERIODIC_INQ, align 4
  %31 = call i64 @hci_dev_test_flag(%struct.hci_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %90

34:                                               ; preds = %28
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = call i32 @hci_dev_lock(%struct.hci_dev* %35)
  br label %37

37:                                               ; preds = %82, %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %42 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %43 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %42, i32 0, i32 1
  %44 = call i32 @bacpy(i32* %41, i32* %43)
  %45 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %46 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %50 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %51, i32* %52, align 4
  %53 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %54 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %60 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %58, i32 %61, i32 3)
  %63 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %64 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @HCI_RSSI_INVALID, align 4
  %68 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %70, %struct.inquiry_data* %5, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %74 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %73, i32 0, i32 1
  %75 = load i32, i32* @ACL_LINK, align 4
  %76 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %77 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HCI_RSSI_INVALID, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @mgmt_device_found(%struct.hci_dev* %72, i32* %74, i32 %75, i32 0, i32 %78, i32 %79, i32 %80, i32* null, i32 0, i32* null, i32 0)
  br label %82

82:                                               ; preds = %40
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %7, align 4
  %85 = load %struct.inquiry_info*, %struct.inquiry_info** %6, align 8
  %86 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %85, i32 1
  store %struct.inquiry_info* %86, %struct.inquiry_info** %6, align 8
  br label %37

87:                                               ; preds = %37
  %88 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %89 = call i32 @hci_dev_unlock(%struct.hci_dev* %88)
  br label %90

90:                                               ; preds = %87, %33, %27
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_inquiry_cache_update(%struct.hci_dev*, %struct.inquiry_data*, i32) #1

declare dso_local i32 @mgmt_device_found(%struct.hci_dev*, i32*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
