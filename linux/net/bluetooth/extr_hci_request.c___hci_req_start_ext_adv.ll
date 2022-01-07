; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_start_ext_adv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_start_ext_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@HCI_LE_ADV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hci_req_start_ext_adv(%struct.hci_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %9 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %8, i32 0, i32 0
  %10 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  store %struct.hci_dev* %10, %struct.hci_dev** %6, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %12 = load i32, i32* @HCI_LE_ADV, align 4
  %13 = call i64 @hci_dev_test_flag(%struct.hci_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %17 = call i32 @__hci_req_disable_advertising(%struct.hci_request* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @__hci_req_setup_ext_adv_instance(%struct.hci_request* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @__hci_req_update_scan_rsp_data(%struct.hci_request* %27, i32 %28)
  %30 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @__hci_req_enable_ext_advertising(%struct.hci_request* %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @__hci_req_disable_advertising(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_setup_ext_adv_instance(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_scan_rsp_data(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_enable_ext_advertising(%struct.hci_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
