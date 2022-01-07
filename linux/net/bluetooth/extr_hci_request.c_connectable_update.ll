; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_connectable_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_connectable_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32 }

@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @connectable_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connectable_update(%struct.hci_request* %0, i64 %1) #0 {
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
  %11 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %12 = call i32 @__hci_req_update_scan(%struct.hci_request* %11)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %14 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %15 = call i64 @hci_dev_test_flag(%struct.hci_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__hci_req_update_adv_data(%struct.hci_request* %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = load i32, i32* @HCI_ADVERTISING, align 4
  %26 = call i64 @hci_dev_test_flag(%struct.hci_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 1
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %35 = call i64 @ext_adv_capable(%struct.hci_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__hci_req_start_ext_adv(%struct.hci_request* %38, i32 %41)
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %45 = call i32 @__hci_req_enable_advertising(%struct.hci_request* %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %49 = call i32 @__hci_update_background_scan(%struct.hci_request* %48)
  %50 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %51 = call i32 @hci_dev_unlock(%struct.hci_dev* %50)
  ret i32 0
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_update_scan(%struct.hci_request*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @__hci_req_update_adv_data(%struct.hci_request*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_start_ext_adv(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_enable_advertising(%struct.hci_request*) #1

declare dso_local i32 @__hci_update_background_scan(%struct.hci_request*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
