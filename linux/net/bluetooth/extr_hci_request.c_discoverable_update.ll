; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_discoverable_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_discoverable_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@HCI_LIMITED_PRIVACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @discoverable_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discoverable_update(%struct.hci_request* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %10 = call i32 @hci_dev_lock(%struct.hci_dev* %9)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %12 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %13 = call i64 @hci_dev_test_flag(%struct.hci_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %17 = call i32 @write_iac(%struct.hci_request* %16)
  %18 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %19 = call i32 @__hci_req_update_scan(%struct.hci_request* %18)
  %20 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %21 = call i32 @__hci_req_update_class(%struct.hci_request* %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %24 = load i32, i32* @HCI_ADVERTISING, align 4
  %25 = call i64 @hci_dev_test_flag(%struct.hci_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %29 = call i32 @__hci_req_update_adv_data(%struct.hci_request* %28, i32 0)
  %30 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %31 = load i32, i32* @HCI_LIMITED_PRIVACY, align 4
  %32 = call i64 @hci_dev_test_flag(%struct.hci_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %36 = call i64 @ext_adv_capable(%struct.hci_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %40 = call i32 @__hci_req_start_ext_adv(%struct.hci_request* %39, i32 0)
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %43 = call i32 @__hci_req_enable_advertising(%struct.hci_request* %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %48 = call i32 @hci_dev_unlock(%struct.hci_dev* %47)
  ret i32 0
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @write_iac(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_scan(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_class(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_adv_data(%struct.hci_request*, i32) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_start_ext_adv(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_enable_advertising(%struct.hci_request*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
