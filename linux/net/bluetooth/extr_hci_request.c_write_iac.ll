; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_write_iac.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_write_iac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_write_current_iac_lap = type { i32, i32* }

@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@HCI_OP_WRITE_CURRENT_IAC_LAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @write_iac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_iac(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_write_current_iac_lap, align 8
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %10 = call i64 @hci_dev_test_flag(%struct.hci_dev* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i32, i32* @u8, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @min_t(i32 %19, i32 %22, i32 2)
  %24 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 139, i32* %30, align 4
  %31 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 158, i32* %33, align 4
  %34 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 51, i32* %36, align 4
  %37 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 139, i32* %39, align 4
  %40 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 158, i32* %42, align 4
  br label %54

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 51, i32* %47, align 4
  %48 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 139, i32* %50, align 4
  %51 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 158, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %18
  %55 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %56 = load i32, i32* @HCI_OP_WRITE_CURRENT_IAC_LAP, align 4
  %57 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, %struct.hci_cp_write_current_iac_lap* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 3
  %60 = add nsw i32 %59, 1
  %61 = call i32 @hci_req_add(%struct.hci_request* %55, i32 %56, i32 %60, %struct.hci_cp_write_current_iac_lap* %4)
  br label %62

62:                                               ; preds = %54, %12
  ret void
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_write_current_iac_lap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
