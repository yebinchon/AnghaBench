; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_extended_inquiry_result_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_extended_inquiry_result_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.inquiry_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.extended_inquiry_info = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s num_rsp %d\00", align 1
@HCI_PERIODIC_INQ = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@EIR_NAME_COMPLETE = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_extended_inquiry_result_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_extended_inquiry_result_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inquiry_data, align 4
  %6 = alloca %struct.extended_inquiry_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.extended_inquiry_info*
  store %struct.extended_inquiry_info* %16, %struct.extended_inquiry_info** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %114

30:                                               ; preds = %2
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = load i32, i32* @HCI_PERIODIC_INQ, align 4
  %33 = call i64 @hci_dev_test_flag(%struct.hci_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %114

36:                                               ; preds = %30
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = call i32 @hci_dev_lock(%struct.hci_dev* %37)
  br label %39

39:                                               ; preds = %106, %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %111

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %44 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %45 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %44, i32 0, i32 3
  %46 = call i32 @bacpy(i32* %43, i32* %45)
  %47 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %48 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %49, i32* %50, align 4
  %51 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %52 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %59 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %57, i32 %60, i32 3)
  %62 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %63 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %67 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = load i32, i32* @HCI_MGMT, align 4
  %73 = call i64 @hci_dev_test_flag(%struct.hci_dev* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %42
  %76 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %77 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EIR_NAME_COMPLETE, align 4
  %80 = call i32 @eir_get_data(i32 %78, i32 4, i32 %79, i32* null)
  store i32 %80, i32* %10, align 4
  br label %82

81:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %75
  %83 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %83, %struct.inquiry_data* %5, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %87 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @eir_get_length(i32 %88, i32 4)
  store i64 %89, i64* %8, align 8
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %92 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %91, i32 0, i32 3
  %93 = load i32, i32* @ACL_LINK, align 4
  %94 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %95 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %98 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %102 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @mgmt_device_found(%struct.hci_dev* %90, i32* %92, i32 %93, i32 0, i32 %96, i32 %99, i32 %100, i32 %103, i64 %104, i32* null, i32 0)
  br label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %110 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %109, i32 1
  store %struct.extended_inquiry_info* %110, %struct.extended_inquiry_info** %6, align 8
  br label %39

111:                                              ; preds = %39
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = call i32 @hci_dev_unlock(%struct.hci_dev* %112)
  br label %114

114:                                              ; preds = %111, %35, %29
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eir_get_data(i32, i32, i32, i32*) #1

declare dso_local i32 @hci_inquiry_cache_update(%struct.hci_dev*, %struct.inquiry_data*, i32) #1

declare dso_local i64 @eir_get_length(i32, i32) #1

declare dso_local i32 @mgmt_device_found(%struct.hci_dev*, i32*, i32, i32, i32, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
