; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_create_instance_scan_rsp_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_create_instance_scan_rsp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }
%struct.adv_info = type { i32, i64, i32 }

@MGMT_ADV_FLAG_APPEARANCE = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LOCAL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hci_dev*, i64, i64*)* @create_instance_scan_rsp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_instance_scan_rsp_data(%struct.hci_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.adv_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %11, i64 %12)
  store %struct.adv_info* %13, %struct.adv_info** %8, align 8
  %14 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %15 = icmp ne %struct.adv_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %62

17:                                               ; preds = %3
  %18 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %19 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MGMT_ADV_FLAG_APPEARANCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @append_appearance(%struct.hci_dev* %31, i64* %32, i64 %33)
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %30, %25, %17
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %40 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %43 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i64* %38, i32 %41, i64 %44)
  %46 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %47 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MGMT_ADV_FLAG_LOCAL_NAME, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @append_local_name(%struct.hci_dev* %56, i64* %57, i64 %58)
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %55, %35
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %60, %16
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i64) #1

declare dso_local i64 @append_appearance(%struct.hci_dev*, i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i64 @append_local_name(%struct.hci_dev*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
