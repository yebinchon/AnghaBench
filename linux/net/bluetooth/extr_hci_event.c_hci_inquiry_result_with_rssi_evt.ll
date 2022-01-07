; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_inquiry_result_with_rssi_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_inquiry_result_with_rssi_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.inquiry_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inquiry_info_with_rssi_and_pscan_mode = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.inquiry_info_with_rssi = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s num_rsp %d\00", align 1
@HCI_PERIODIC_INQ = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_inquiry_result_with_rssi_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_inquiry_result_with_rssi_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inquiry_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inquiry_info_with_rssi_and_pscan_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inquiry_info_with_rssi*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %165

24:                                               ; preds = %2
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load i32, i32* @HCI_PERIODIC_INQ, align 4
  %27 = call i64 @hci_dev_test_flag(%struct.hci_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %165

30:                                               ; preds = %24
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = call i32 @hci_dev_lock(%struct.hci_dev* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 24
  br i1 %40, label %41, label %103

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.inquiry_info_with_rssi_and_pscan_mode*
  store %struct.inquiry_info_with_rssi_and_pscan_mode* %47, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  br label %48

48:                                               ; preds = %97, %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %102

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %53 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %54 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %53, i32 0, i32 3
  %55 = call i32 @bacpy(i32* %52, i32* %54)
  %56 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %57 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %61 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %65 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %71 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %69, i32 %72, i32 3)
  %74 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %75 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %79 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %84 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %83, %struct.inquiry_data* %5, i32 0)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %86 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %87 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %86, i32 0, i32 3
  %88 = load i32, i32* @ACL_LINK, align 4
  %89 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %90 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %93 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mgmt_device_found(%struct.hci_dev* %85, i32* %87, i32 %88, i32 0, i32 %91, i32 %94, i32 %95, i32* null, i32 0, i32* null, i32 0)
  br label %97

97:                                               ; preds = %51
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %101 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %100, i32 1
  store %struct.inquiry_info_with_rssi_and_pscan_mode* %101, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  br label %48

102:                                              ; preds = %48
  br label %162

103:                                              ; preds = %30
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  %108 = inttoptr i64 %107 to i8*
  %109 = bitcast i8* %108 to %struct.inquiry_info_with_rssi*
  store %struct.inquiry_info_with_rssi* %109, %struct.inquiry_info_with_rssi** %9, align 8
  br label %110

110:                                              ; preds = %156, %103
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %161

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %115 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %116 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %115, i32 0, i32 2
  %117 = call i32 @bacpy(i32* %114, i32* %116)
  %118 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %119 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %120, i32* %121, align 4
  %122 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %123 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %130 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32 %128, i32 %131, i32 3)
  %133 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %134 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  store i32 %135, i32* %136, align 4
  %137 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %138 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %143 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %142, %struct.inquiry_data* %5, i32 0)
  store i32 %143, i32* %10, align 4
  %144 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %145 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %146 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %145, i32 0, i32 2
  %147 = load i32, i32* @ACL_LINK, align 4
  %148 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %149 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %152 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @mgmt_device_found(%struct.hci_dev* %144, i32* %146, i32 %147, i32 0, i32 %150, i32 %153, i32 %154, i32* null, i32 0, i32* null, i32 0)
  br label %156

156:                                              ; preds = %113
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %6, align 4
  %159 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %9, align 8
  %160 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %159, i32 1
  store %struct.inquiry_info_with_rssi* %160, %struct.inquiry_info_with_rssi** %9, align 8
  br label %110

161:                                              ; preds = %110
  br label %162

162:                                              ; preds = %161, %102
  %163 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %164 = call i32 @hci_dev_unlock(%struct.hci_dev* %163)
  br label %165

165:                                              ; preds = %162, %29, %23
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
