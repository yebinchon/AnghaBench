; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*)* @hci_dev_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dev_down(%struct.nfc_dev* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %2, align 8
  %4 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %5 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %4)
  store %struct.nfc_hci_dev* %5, %struct.nfc_hci_dev** %3, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @nfc_llc_stop(i32 %8)
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %13, align 8
  %15 = icmp ne i32 (%struct.nfc_hci_dev*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %20, align 8
  %22 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %23 = call i32 %21(%struct.nfc_hci_dev* %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %26 = call i32 @nfc_hci_reset_pipes(%struct.nfc_hci_dev* %25)
  ret i32 0
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nfc_llc_stop(i32) #1

declare dso_local i32 @nfc_hci_reset_pipes(%struct.nfc_hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
