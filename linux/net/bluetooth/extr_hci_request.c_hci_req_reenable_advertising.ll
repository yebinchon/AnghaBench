; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_reenable_advertising.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_reenable_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_request = type { i32 }

@HCI_ADVERTISING = common dso_local global i32 0, align 4
@adv_enable_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_req_reenable_advertising(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_request, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = load i32, i32* @HCI_ADVERTISING, align 4
  %6 = call i32 @hci_dev_test_flag(%struct.hci_dev* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %40

14:                                               ; preds = %8, %1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = call i32 @hci_req_init(%struct.hci_request* %3, %struct.hci_dev* %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__hci_req_schedule_adv_instance(%struct.hci_request* %3, i32 %24, i32 1)
  br label %37

26:                                               ; preds = %14
  %27 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %28 = call i64 @ext_adv_capable(%struct.hci_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @__hci_req_start_ext_adv(%struct.hci_request* %3, i32 0)
  br label %36

32:                                               ; preds = %26
  %33 = call i32 @__hci_req_update_adv_data(%struct.hci_request* %3, i32 0)
  %34 = call i32 @__hci_req_update_scan_rsp_data(%struct.hci_request* %3, i32 0)
  %35 = call i32 @__hci_req_enable_advertising(%struct.hci_request* %3)
  br label %36

36:                                               ; preds = %32, %30
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* @adv_enable_complete, align 4
  %39 = call i32 @hci_req_run(%struct.hci_request* %3, i32 %38)
  br label %40

40:                                               ; preds = %37, %13
  ret void
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_schedule_adv_instance(%struct.hci_request*, i32, i32) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_start_ext_adv(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_adv_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_scan_rsp_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_enable_advertising(%struct.hci_request*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
