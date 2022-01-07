; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_request = type opaque
%struct.hci_request.0 = type opaque

@HCI_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_req_sync(%struct.hci_dev* %0, i32 (%struct.hci_request*, i64)* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32 (%struct.hci_request*, i64)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32 (%struct.hci_request*, i64)* %1, i32 (%struct.hci_request*, i64)** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @HCI_UP, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENETDOWN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %34

21:                                               ; preds = %5
  %22 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %23 = call i32 @hci_req_sync_lock(%struct.hci_dev* %22)
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = load i32 (%struct.hci_request*, i64)*, i32 (%struct.hci_request*, i64)** %8, align 8
  %26 = bitcast i32 (%struct.hci_request*, i64)* %25 to i32 (%struct.hci_request.0*, i64)*
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @__hci_req_sync(%struct.hci_dev* %24, i32 (%struct.hci_request.0*, i64)* %26, i64 %27, i32 %28, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %32 = call i32 @hci_req_sync_unlock(%struct.hci_dev* %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_req_sync_lock(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_sync(%struct.hci_dev*, i32 (%struct.hci_request.0*, i64)*, i64, i32, i32*) #1

declare dso_local i32 @hci_req_sync_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
