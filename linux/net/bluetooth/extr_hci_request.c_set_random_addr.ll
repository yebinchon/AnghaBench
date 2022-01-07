; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_set_random_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_set_random_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@HCI_LE_ADV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Deferring random address update\00", align 1
@HCI_RPA_EXPIRED = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_RANDOM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*, i32*)* @set_random_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_random_addr(%struct.hci_request* %0, i32* %1) #0 {
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %10 = load i32, i32* @HCI_LE_ADV, align 4
  %11 = call i64 @hci_dev_test_flag(%struct.hci_dev* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %15 = call i64 @hci_lookup_le_connect(%struct.hci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %2
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %20 = load i32, i32* @HCI_RPA_EXPIRED, align 4
  %21 = call i32 @hci_dev_set_flag(%struct.hci_dev* %19, i32 %20)
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %24 = load i32, i32* @HCI_OP_LE_SET_RANDOM_ADDR, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @hci_req_add(%struct.hci_request* %23, i32 %24, i32 6, i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
