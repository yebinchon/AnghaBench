; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_SERVICE_CACHE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_OP_WRITE_CLASS_OF_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_req_update_class(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca [3 x i32], align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = call i32 @hdev_is_powered(%struct.hci_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %19 = call i64 @hci_dev_test_flag(%struct.hci_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %61

22:                                               ; preds = %16
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load i32, i32* @HCI_SERVICE_CACHE, align 4
  %25 = call i64 @hci_dev_test_flag(%struct.hci_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %61

28:                                               ; preds = %22
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = call i32 @get_service_classes(%struct.hci_dev* %37)
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %42 = call i64 @hci_dev_test_flag(%struct.hci_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 32
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %44, %28
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @memcmp(i32* %49, i32 %52, i32 3)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %58 = load i32, i32* @HCI_OP_WRITE_CLASS_OF_DEV, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %60 = call i32 @hci_req_add(%struct.hci_request* %57, i32 %58, i32 12, i32* %59)
  br label %61

61:                                               ; preds = %56, %55, %27, %21, %15
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @get_service_classes(%struct.hci_dev*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
