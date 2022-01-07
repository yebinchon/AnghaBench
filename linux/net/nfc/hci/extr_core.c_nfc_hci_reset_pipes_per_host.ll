; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_reset_pipes_per_host.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_reset_pipes_per_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@NFC_HCI_MAX_PIPES = common dso_local global i32 0, align 4
@NFC_HCI_INVALID_GATE = common dso_local global i32 0, align 4
@NFC_HCI_INVALID_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfc_hci_reset_pipes_per_host(%struct.nfc_hci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %39, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NFC_HCI_MAX_PIPES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %39

22:                                               ; preds = %10
  %23 = load i32, i32* @NFC_HCI_INVALID_GATE, align 4
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %23, i32* %30, align 8
  %31 = load i64, i64* @NFC_HCI_INVALID_HOST, align 8
  %32 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %31, i64* %38, align 8
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %6

42:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
