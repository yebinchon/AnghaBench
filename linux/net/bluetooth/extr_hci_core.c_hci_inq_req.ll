; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_inq_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_inq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32 }
%struct.hci_inquiry_req = type { i32, i32, i32 }
%struct.hci_cp_inquiry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_INQUIRY = common dso_local global i32 0, align 4
@HCI_OP_INQUIRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @hci_inq_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_inq_req(%struct.hci_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hci_inquiry_req*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.hci_cp_inquiry, align 4
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.hci_inquiry_req*
  store %struct.hci_inquiry_req* %10, %struct.hci_inquiry_req** %6, align 8
  %11 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %12 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %11, i32 0, i32 0
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %7, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @HCI_INQUIRY, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %8, i32 0, i32 2
  %26 = load %struct.hci_inquiry_req*, %struct.hci_inquiry_req** %6, align 8
  %27 = getelementptr inbounds %struct.hci_inquiry_req, %struct.hci_inquiry_req* %26, i32 0, i32 2
  %28 = call i32 @memcpy(i32* %25, i32* %27, i32 3)
  %29 = load %struct.hci_inquiry_req*, %struct.hci_inquiry_req** %6, align 8
  %30 = getelementptr inbounds %struct.hci_inquiry_req, %struct.hci_inquiry_req* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.hci_inquiry_req*, %struct.hci_inquiry_req** %6, align 8
  %34 = getelementptr inbounds %struct.hci_inquiry_req, %struct.hci_inquiry_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %38 = load i32, i32* @HCI_OP_INQUIRY, align 4
  %39 = call i32 @hci_req_add(%struct.hci_request* %37, i32 %38, i32 12, %struct.hci_cp_inquiry* %8)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_inquiry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
