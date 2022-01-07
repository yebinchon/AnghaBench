; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_discover_se.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_discover_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @hci_discover_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_discover_se(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  %5 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %6 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %5)
  store %struct.nfc_hci_dev* %6, %struct.nfc_hci_dev** %4, align 8
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %10, align 8
  %12 = icmp ne i32 (%struct.nfc_hci_dev*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %17, align 8
  %19 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %20 = call i32 %18(%struct.nfc_hci_dev* %19)
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
