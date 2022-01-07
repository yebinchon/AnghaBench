; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_disconnect_gate.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_disconnect_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i64* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NFC_HCI_INVALID_PIPE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@NFC_HCI_LINK_MGMT_PIPE = common dso_local global i64 0, align 8
@NFC_HCI_ADMIN_PIPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_hci_disconnect_gate(%struct.nfc_hci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @NFC_HCI_INVALID_PIPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @nfc_hci_close_pipe(%struct.nfc_hci_dev* %22, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @NFC_HCI_LINK_MGMT_PIPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @NFC_HCI_ADMIN_PIPE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @nfc_hci_delete_pipe(%struct.nfc_hci_dev* %38, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33, %29
  %47 = load i64, i64* @NFC_HCI_INVALID_PIPE, align 8
  %48 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %43, %27, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nfc_hci_close_pipe(%struct.nfc_hci_dev*, i64) #1

declare dso_local i32 @nfc_hci_delete_pipe(%struct.nfc_hci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
