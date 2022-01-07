; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dep_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dep_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @hci_dep_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dep_link_down(%struct.nfc_dev* %0) #0 {
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
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %18, align 8
  %20 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %21 = call i32 %19(%struct.nfc_hci_dev* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %13
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
