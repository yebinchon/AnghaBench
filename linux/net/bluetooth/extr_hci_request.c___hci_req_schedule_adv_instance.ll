; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_schedule_adv_instance.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_schedule_adv_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32, i32, i32 }
%struct.adv_info = type { i64, i64, i64 }

@HCI_ADVERTISING = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hci_req_schedule_adv_instance(%struct.hci_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca %struct.adv_info*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %12 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %11, i32 0, i32 0
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %8, align 8
  store %struct.adv_info* null, %struct.adv_info** %9, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %15 = load i32, i32* @HCI_ADVERTISING, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 4
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %133

26:                                               ; preds = %18
  %27 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %133

34:                                               ; preds = %26
  %35 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %35, i32 %36)
  store %struct.adv_info* %37, %struct.adv_info** %9, align 8
  %38 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %39 = icmp ne %struct.adv_info* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %133

43:                                               ; preds = %34
  %44 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %45 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %50 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %53 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48, %43
  %57 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %58 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  br label %66

61:                                               ; preds = %48
  %62 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %63 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %68 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %73 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = load %struct.adv_info*, %struct.adv_info** %9, align 8
  %79 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %66
  %81 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %82 = call i64 @ext_adv_capable(%struct.hci_dev* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 1000
  %95 = call i32 @msecs_to_jiffies(i32 %94)
  %96 = call i32 @queue_delayed_work(i32 %90, i32* %92, i32 %95)
  br label %97

97:                                               ; preds = %84, %80
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %108 = load i32, i32* @HCI_LE_ADV, align 4
  %109 = call i64 @hci_dev_test_flag(%struct.hci_dev* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %133

112:                                              ; preds = %106, %100, %97
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %115 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %117 = call i64 @ext_adv_capable(%struct.hci_dev* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @__hci_req_start_ext_adv(%struct.hci_request* %120, i32 %121)
  br label %132

123:                                              ; preds = %112
  %124 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @__hci_req_update_adv_data(%struct.hci_request* %124, i32 %125)
  %127 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @__hci_req_update_scan_rsp_data(%struct.hci_request* %127, i32 %128)
  %130 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %131 = call i32 @__hci_req_enable_advertising(%struct.hci_request* %130)
  br label %132

132:                                              ; preds = %123, %119
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %111, %40, %31, %23
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @__hci_req_start_ext_adv(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_adv_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_scan_rsp_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_enable_advertising(%struct.hci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
