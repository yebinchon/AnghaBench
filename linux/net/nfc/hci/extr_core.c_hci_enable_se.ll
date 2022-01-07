; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_enable_se.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_enable_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i32)* @hci_enable_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_enable_se(%struct.nfc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %8 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %7)
  store %struct.nfc_hci_dev* %8, %struct.nfc_hci_dev** %6, align 8
  %9 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %10 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nfc_hci_dev*, i32)*, i32 (%struct.nfc_hci_dev*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.nfc_hci_dev*, i32)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nfc_hci_dev*, i32)*, i32 (%struct.nfc_hci_dev*, i32)** %19, align 8
  %21 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %20(%struct.nfc_hci_dev* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
