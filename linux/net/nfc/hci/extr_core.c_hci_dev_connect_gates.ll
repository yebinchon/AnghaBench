; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_connect_gates.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_connect_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_hci_gate = type { i32, i32 }

@NFC_HCI_HOST_CONTROLLER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_hci_gate*)* @hci_dev_connect_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dev_connect_gates(%struct.nfc_hci_dev* %0, i32 %1, %struct.nfc_hci_gate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_hci_gate*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfc_hci_gate* %2, %struct.nfc_hci_gate** %7, align 8
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %15 = load i32, i32* @NFC_HCI_HOST_CONTROLLER_ID, align 4
  %16 = load %struct.nfc_hci_gate*, %struct.nfc_hci_gate** %7, align 8
  %17 = getelementptr inbounds %struct.nfc_hci_gate, %struct.nfc_hci_gate* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfc_hci_gate*, %struct.nfc_hci_gate** %7, align 8
  %20 = getelementptr inbounds %struct.nfc_hci_gate, %struct.nfc_hci_gate* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev* %14, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load %struct.nfc_hci_gate*, %struct.nfc_hci_gate** %7, align 8
  %29 = getelementptr inbounds %struct.nfc_hci_gate, %struct.nfc_hci_gate* %28, i32 1
  store %struct.nfc_hci_gate* %29, %struct.nfc_hci_gate** %7, align 8
  br label %9

30:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
