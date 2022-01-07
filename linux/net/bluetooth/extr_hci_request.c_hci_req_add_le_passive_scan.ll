; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_add_le_passive_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_add_le_passive_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32*, i32, i32 }

@HCI_PRIVACY = common dso_local global i32 0, align 4
@HCI_LE_EXT_SCAN_POLICY = common dso_local global i32 0, align 4
@LE_SCAN_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_req_add_le_passive_scan(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call i32 @scan_use_rpa(%struct.hci_dev* %10)
  %12 = call i64 @hci_update_random_address(%struct.hci_request* %9, i32 0, i32 %11, i32* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %17 = call i32 @update_white_list(%struct.hci_request* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_PRIVACY, align 4
  %20 = call i64 @hci_dev_test_flag(%struct.hci_dev* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HCI_LE_EXT_SCAN_POLICY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %22, %15
  %35 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %36 = load i32, i32* @LE_SCAN_PASSIVE, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @hci_req_start_scan(%struct.hci_request* %35, i32 %36, i32 %39, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %34, %14
  ret void
}

declare dso_local i64 @hci_update_random_address(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @scan_use_rpa(%struct.hci_dev*) #1

declare dso_local i32 @update_white_list(%struct.hci_request*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_start_scan(%struct.hci_request*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
