; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*, i8*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*)* @hci_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_fw_download(%struct.nfc_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %8 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %7)
  store %struct.nfc_hci_dev* %8, %struct.nfc_hci_dev** %6, align 8
  %9 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %10 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nfc_hci_dev*, i8*)*, i32 (%struct.nfc_hci_dev*, i8*)** %12, align 8
  %14 = icmp ne i32 (%struct.nfc_hci_dev*, i8*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nfc_hci_dev*, i8*)*, i32 (%struct.nfc_hci_dev*, i8*)** %22, align 8
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 %23(%struct.nfc_hci_dev* %24, i8* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
