; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_connect_gate.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_connect_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NFC_HCI_DO_NOT_CREATE_PIPE = common dso_local global i64 0, align 8
@NFC_HCI_INVALID_PIPE = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@NFC_HCI_LINK_MGMT_PIPE = common dso_local global i64 0, align 8
@NFC_HCI_ADMIN_PIPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_hci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @NFC_HCI_DO_NOT_CREATE_PIPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

17:                                               ; preds = %4
  %18 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %19 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFC_HCI_INVALID_PIPE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EADDRINUSE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %91

29:                                               ; preds = %17
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @NFC_HCI_INVALID_PIPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %52

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  switch i64 %35, label %40 [
    i64 128, label %36
    i64 129, label %38
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* @NFC_HCI_LINK_MGMT_PIPE, align 8
  store i64 %37, i64* %9, align 8
  br label %51

38:                                               ; preds = %34
  %39 = load i64, i64* @NFC_HCI_ADMIN_PIPE, align 8
  store i64 %39, i64* %9, align 8
  br label %51

40:                                               ; preds = %34
  %41 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @nfc_hci_create_pipe(%struct.nfc_hci_dev* %41, i64 %42, i64 %43, i32* %11)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @NFC_HCI_INVALID_PIPE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %91

50:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %38, %36
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @nfc_hci_open_pipe(%struct.nfc_hci_dev* %53, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @nfc_hci_delete_pipe(%struct.nfc_hci_dev* %62, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %91

70:                                               ; preds = %52
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %73 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %71, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %80 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i64 %78, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %87 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %85, i64* %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %70, %68, %48, %26, %16
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @nfc_hci_create_pipe(%struct.nfc_hci_dev*, i64, i64, i32*) #1

declare dso_local i32 @nfc_hci_open_pipe(%struct.nfc_hci_dev*, i64) #1

declare dso_local i64 @nfc_hci_delete_pipe(%struct.nfc_hci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
